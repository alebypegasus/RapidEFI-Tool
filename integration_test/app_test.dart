import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:rapidefi/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('app launch and smoke test', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Basic smoke test checking if main elements render.
      // E.g., finding the home tab or similar text.
      expect(find.byType(Directionality), findsWidgets);
    });
  });
}
