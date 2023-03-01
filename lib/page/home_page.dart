import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/page/task_list_page.dart';
import 'package:kanban_flutter_sample/provider/task_list_provider.dart';
import 'package:kanban_flutter_sample/routing/app_router.gr.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(taskNotifierProvider.notifier).getAllTasks();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(taskNotifierProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _pushToAddTaskPage(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              controller: PageController(
                viewportFraction: 0.9,
                initialPage: 0,
              ),
              children: const [
                TaskListPage(status: TaskStatus.toDo),
                TaskListPage(status: TaskStatus.inProgress),
                TaskListPage(status: TaskStatus.completed),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _pushToAddTaskPage() {
    context.router.push(TaskEditRoute());
  }
}

class Header extends ConsumerWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final taskList = ref.watch(taskListProvider(TaskStatus.inProgress));

    return Card(
      margin: EdgeInsets.zero,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back, User',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        Row(
                          children: [
                            const Icon(Icons.notifications, color: Colors.blue, size: 14.0,),
                            const SizedBox(width: 2.0),
                            Expanded(
                              child: Text(
                                '${taskList.length} tasks in progress',
                                style: textTheme.bodySmall,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.download),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
