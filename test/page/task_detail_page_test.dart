import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kanban_flutter_sample/page/task_detail_page.dart';
import 'package:kanban_flutter_sample/widget/general_input_label.dart';
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
    await tester.pumpWidget(const TestApp(child: TaskDetailPage()));

    await tester.pumpAndSettle();

    expect(find.widgetWithText(AppBar, 'New Task'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Title'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Label'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Due Date'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Description'), findsOneWidget);
    expect(find.widgetWithText(GeneralInputLabel, 'Status'), findsOneWidget);
    expect(find.widgetWithText(ChoiceChip, 'To Do'), findsOneWidget);
    expect(find.widgetWithText(ChoiceChip, 'In Progress'), findsOneWidget);
    expect(find.widgetWithText(ChoiceChip, 'Completed'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Add Task'), findsOneWidget);

    expect(find.byType(StatusOptions), findsOneWidget);
    expect(find.byType(ChoiceChip), findsNWidgets(3));
    expect(find.byType(ElevatedButton), findsOneWidget);
  });

  testWidgets('''
  Given task detail opened,
  When editing task,
  Then all UI will be displayed accordingly
   ''', (tester) async {
    await tester.pumpWidget(TestApp(child: TaskDetailPage(task: sampleTask)));

    await tester.pumpAndSettle();

    expect(find.widgetWithText(AppBar, 'Edit Task'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Title'), findsOneWidget);
    expect(find.text('title 1'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Label'), findsOneWidget);
    expect(find.text('label 1'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Due Date'), findsOneWidget);
    expect(find.widgetWithText(GeneralTextInput, 'Description'), findsOneWidget);
    expect(find.text('description 1'), findsOneWidget);
    expect(find.widgetWithText(GeneralInputLabel, 'Status'), findsOneWidget);
    expect(find.widgetWithText(ChoiceChip, 'To Do'), findsOneWidget);
    expect(find.widgetWithText(ChoiceChip, 'In Progress'), findsOneWidget);
    expect(find.widgetWithText(ChoiceChip, 'Completed'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Edit Task'), findsOneWidget);

    expect(find.byType(StatusOptions), findsOneWidget);
    expect(find.byType(ChoiceChip), findsNWidgets(3));
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
