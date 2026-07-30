import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/application/app.dart';
import 'package:rapidefi/utils/theme.dart';

void main() {
  testWidgets('App basic smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RapidEFIApp());

    // Basic layout verification
    expect(find.byType(RapidEFIApp), findsOneWidget);
  });
}
