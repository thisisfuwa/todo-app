import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:to_do_application/main.dart';

void main() {
  testWidgets('Add todo', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byKey(const Key('todo-list')), findsNothing);
    await tester.tap(find.byKey(const Key('add-button')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('todo-title')), 'Hello world');
    expect(find.text('Hello world'), findsOneWidget);
    await tester.tap(find.byKey(const Key('dialog-add')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('todo-list')), findsWidgets);
  });
}
