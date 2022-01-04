import 'package:flutter/material.dart';
import 'package:flutter_counter/app.dart';
import 'package:flutter_counter/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter App', () {
    // test is CounterApp is MaterialApp
    testWidgets('is a Material App', (tester) async {
      expect(const CounterApp(), isA<MaterialApp>());
    });

    // test CounterApp home is CounterPage

    testWidgets('home is CounterPage', (tester) async {
      expect(const CounterApp().home, isA<CounterPage>());
    });

    testWidgets('renders Counter Page', (tester) async {
      await tester.pumpWidget(const CounterApp());

      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
