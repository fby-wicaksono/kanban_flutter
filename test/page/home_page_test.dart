import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/page/home_page.dart';
import 'package:kanban_flutter_sample/page/task_list_page.dart';
import 'package:kanban_flutter_sample/provider/database_provider.dart';
import 'package:kanban_flutter_sample/widget/task_list_item.dart';
import 'package:mockito/mockito.dart';

import '../test_util/mock/repository_mock.mocks.dart';
import '../test_util/mock/test_model.dart';
import '../test_util/test_util.dart';

void main() {
  late MockTaskRepo mockTaskRepo;

  final defaultTaskList = [
    buildTaskFromTemplate(
      status: TaskStatus.toDo,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
    ),
    buildTaskFromTemplate(
      status: TaskStatus.toDo,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
    ),
    buildTaskFromTemplate(
      status: TaskStatus.inProgress,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
    ),
    buildTaskFromTemplate(
      status: TaskStatus.inProgress,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
    ),
    buildTaskFromTemplate(
      status: TaskStatus.inProgress,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
    ),
  ];

  setUp(() {
    mockTaskRepo = MockTaskRepo();
  });

  testWidgets('''
  Given the app opened,
  And Home Page shown,
  Then all UI will be displayed accordingly
   ''', (tester) async {
    await tester.pumpWidget(const TestApp(child: HomePage()));

    await tester.pumpAndSettle();

    expect(find.widgetWithText(Header, 'Welcome Back, User'), findsOneWidget);
    expect(find.widgetWithIcon(Header, Icons.download), findsOneWidget);
    expect(find.widgetWithIcon(Header, Icons.notifications), findsOneWidget);

    expect(find.byType(PageView), findsOneWidget);
    expect(find.byType(TaskListPage), findsNWidgets(2));
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('''
  Given the app opened,
  And there are few task in progress,
  Then the amount of task in progress will be shown in the header
  ''', (tester) async {
    when(mockTaskRepo.getAllTasks()).thenAnswer((_) async => defaultTaskList);

    await tester.pumpWidget(TestApp(
      overrides: [
        taskRepoProvider.overrideWithValue(mockTaskRepo),
      ],
      child: const HomePage(),
    ));

    await tester.pumpAndSettle();

    expect(find.widgetWithText(Header, '3 tasks in progress'), findsOneWidget);
  });

  testWidgets('''
  Given the app opened,
  And there are few task in todo and in progress,
  Then there will be tasks listed on the todo page & in progress page
  ''', (tester) async {
    when(mockTaskRepo.getAllTasks()).thenAnswer((_) async => defaultTaskList);

    await tester.pumpWidget(TestApp(
      overrides: [
        taskRepoProvider.overrideWithValue(mockTaskRepo),
      ],
      child: const HomePage(),
    ));

    await tester.pumpAndSettle();

    expect(find.byType(TaskListItem), findsNWidgets(5));
  });
}
