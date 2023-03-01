import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kanban_flutter_sample/page/task_edit_page.dart';
import 'package:kanban_flutter_sample/widget/general_text_input.dart';

import '../test_util/mock/test_model.dart';
import '../test_util/test_util.dart';

void main() {
  final sampleTask = buildTaskFromTemplate(
    startDate: DateTime.now(),
    endDate: DateTime.now(),
  );

  testWidgets('''
  Given task detail opened,
  When creating new task,
  Then all UI will be displayed accordingly
   ''', (tester) async {
    await tester.pumpWidget(const TestApp(child: TaskEditPage()));

    await tester.pumpAndSettle();

    expect(find.widgetWithText(AppBar, 'New Task'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Title'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Label'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Description'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Add Task'), findsOneWidget);

    expect(find.byType(ElevatedButton), findsOneWidget);
  });

  testWidgets('''
  Given task detail opened,
  When editing task,
  Then all UI will be displayed accordingly
   ''', (tester) async {
    await tester.pumpWidget(TestApp(child: TaskEditPage(task: sampleTask)));

    await tester.pumpAndSettle();

    expect(find.widgetWithText(AppBar, 'Edit Task'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Title'), findsOneWidget);
    expect(find.text('title 1'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Label'), findsOneWidget);
    expect(find.text('label 1'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Description'), findsOneWidget);
    expect(find.text('description 1'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Edit Task'), findsOneWidget);

    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
