import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/provider/task_list_provider.dart';
import 'package:kanban_flutter_sample/routing/app_router.gr.dart';
import 'package:kanban_flutter_sample/widget/task_detail.dart';
import 'package:kanban_flutter_sample/widget/task_list_item.dart';

class TaskListPage extends ConsumerStatefulWidget {
  const TaskListPage({
    Key? key,
    required this.status,
  }) : super(key: key);

  final TaskStatus status;

  @override
  ConsumerState createState() => _TaskListPageState();
}

class _TaskListPageState extends ConsumerState<TaskListPage> {
  @override
  Widget build(BuildContext context) {
    final taskList = ref.watch(taskListProvider(widget.status));

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Status(status: widget.status.statusName),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) => TaskListItem(
                task: taskList[index],
                onItemPressed: () => _showDetailBottomSheet(taskList[index]),
              ),
              itemCount: taskList.length,
            ),
          ),
        ],
      ),
    );
  }

  void _showDetailBottomSheet(Task task) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      builder: (context) => TaskDetail(task: task),
    );
  }

  void _pushToTaskDetailPage(Task task) {
    context.router.push(TaskEditRoute(task: task));
  }
}

class _Status extends StatelessWidget {
  const _Status({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          status,
          style: textTheme.bodyMedium?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
