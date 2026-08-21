import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rapidefi/pages/hardware/widgets/gpu_section.dart';
import 'package:rapidefi/utils/hardware/analysis/gpu_compatibility_data.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await GpuCompatibilityData.ensureLoaded();
  });

  testWidgets('integrated GPU name uses compatibility data name',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'GPU': {
            'Intel(R) HD Graphics': {
              'Device ID': '8086-016A',
              'Device Type': 'Integrated Graphics',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('HD Graphics P4000'), findsOneWidget);
    expect(find.textContaining('Intel(R) HD Graphics'), findsNothing);
  });

  testWidgets('discrete GPU keeps original name and shows identity override id',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'GPU': {
            'Original dGPU Name': {
              'Device ID': '1002-6981',
              'Device Type': 'Discrete Graphics',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('Original dGPU Name'), findsOneWidget);
    expect(find.text('Requires Spoof ID: 67FF'), findsOneWidget);
  });

  testWidgets('single supported GPU only shows compatible status',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'GPU': {
            'Radeon (TM) Pro WX 4100': {
              'Device ID': '1002-67E3',
              'Device Type': 'Discrete Graphics',
            },
          },
        }),
      ),
    ));

    expect(find.text('Supported'), findsOneWidget);
    expect(find.textContaining('Native support'), findsNothing);
  });

  testWidgets('multi GPU keeps NootedRed whitelist compatibility visible',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'AMD Ryzen 7 5800H', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'Motherboard': {
            'Platform': 'Laptop',
          },
          'GPU': {
            'AMD Radeon Graphics': {
              'Device ID': '1002:1638',
              'Device Type': 'Integrated',
            },
            'Unknown GPU': {
              'Device ID': '1234-5678',
              'Device Type': 'Discrete',
            },
          },
          'Monitor': {
            'Built-in Display': {
              'Connected GPU': 'AMD Radeon(TM) Graphics',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('NootedRed'), findsOneWidget);
    expect(find.textContaining('No direct internal display output'), findsNothing);
  });

  testWidgets('laptop multi GPU marks GPU without internal display unsupported',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'Motherboard': {
            'Platform': 'Laptop',
          },
          'GPU': {
            'Intel UHD Graphics 630': {
              'Device ID': '8086-3E92',
              'Device Type': 'Integrated Graphics',
            },
            'Radeon RX 580': {
              'Device ID': '1002-67DF',
              'Device Type': 'Discrete Graphics',
            },
          },
          'Monitor': {
            'Built-in Display': {
              'Connected GPU': 'UHD Graphics 630',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('Radeon RX 580'), findsWidgets);
    expect(find.textContaining('Unsupported\nNo direct internal display connection'), findsOneWidget);
  });

  testWidgets('desktop multi GPU does not apply internal display rule',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'Motherboard': {
            'Platform': 'Desktop',
          },
          'GPU': {
            'GeForce RTX 3060 Ti GDDR6X': {
              'Device ID': '10DE-24C9',
              'Device Type': 'Discrete Graphics',
            },
            'Radeon HD7750': {
              'Device ID': '10DE-104A',
              'Device Type': 'Discrete Graphics',
            },
          },
          'Monitor': {
            'External Display': {
              'Connected GPU': 'GeForce RTX 3060 Ti GDDR6X',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('No direct internal display output'), findsNothing);
  });

  testWidgets('compatibility panel GPU name matches hardware row name',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'GPU': {
            'Intel(R) HD Graphics Family': {
              'Device ID': '8086-0412',
              'Device Type': 'Integrated Graphics',
            },
            'Radeon RX 560 Series': {
              'Device ID': '1002-67EF',
              'Device Type': 'Discrete Graphics',
            },
          },
          'Monitor': {
            'Built-in Display': {
              'Connected GPU': 'Intel(R) HD Graphics Family',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('Radeon RX 560 Series'), findsWidgets);
    expect(find.textContaining('460/560D / Pro'), findsNothing);
  });

  testWidgets(
      'multi GPU without connected internal display keeps original logic',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'GPU': {
            'Intel UHD Graphics 630': {
              'Device ID': '8086-3E92',
              'Device Type': 'Integrated Graphics',
            },
            'Radeon RX 580': {
              'Device ID': '1002-67DF',
              'Device Type': 'Discrete Graphics',
            },
          },
          'Monitor': {
            'External Display': {
              'Connector Type': 'HDMI',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('No direct internal display output'), findsNothing);
  });

  testWidgets('single GPU with connected internal display keeps original logic',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GpuSection({
          'CPU': [
            {'Name': 'Intel Core i5', 'SIMD Features': 'SSE4 AVX AVX2'},
          ],
          'GPU': {
            'Intel UHD Graphics 630': {
              'Device ID': '8086-3E92',
              'Device Type': 'Integrated Graphics',
            },
          },
          'Monitor': {
            'Built-in Display': {
              'Connected GPU': 'UHD Graphics 630',
            },
          },
        }),
      ),
    ));

    expect(find.textContaining('No direct internal display output'), findsNothing);
  });
}
