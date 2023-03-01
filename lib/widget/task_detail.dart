import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_state.dart';
import 'package:kanban_flutter_sample/provider/task_detail_provider.dart';
import 'package:kanban_flutter_sample/provider/task_list_provider.dart';
import 'package:kanban_flutter_sample/routing/app_router.gr.dart';
import 'package:kanban_flutter_sample/widget/general_input_label.dart';

class TaskDetail extends ConsumerStatefulWidget {
  const TaskDetail({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  ConsumerState createState() => _TaskDetailState();
}

class _TaskDetailState extends ConsumerState<TaskDetail> {
  String get _actionButtonText {
    if (widget.task.status == TaskStatus.toDo) {
      return 'Start Working';
    }

    return 'Work Finish';
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(taskDetailNotifierProvider, (_, state) {
      if (state is TaskDetailStateSuccess) {
        ref.read(taskNotifierProvider.notifier).editTask(state.task);
        context.router.pop();
      }
    });

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LabelWithValue(
              label: 'Title',
              value: widget.task.title,
            ),
            const SizedBox(height: 10.0),
            LabelWithValue(
              label: 'Label',
              value: widget.task.label,
            ),
            const SizedBox(height: 10.0),
            LabelWithValue(
              label: 'Description',
              value: widget.task.description,
            ),
            const SizedBox(height: 10.0),
            LabelWithValue(
              label: 'Status',
              value: widget.task.status.statusName,
            ),
            const SizedBox(height: 10.0),
            if (widget.task.status != TaskStatus.toDo)
              LabelWithValue(
                label: 'Elapsed time',
                value: widget.task.getElapsedTime(widget.task.endDate ?? DateTime.now()),
              ),
            if (widget.task.status == TaskStatus.completed)
              ...[
                const SizedBox(height: 10.0),
                LabelWithValue(
                  label: 'Date Completed',
                  value: _formattedDateText(widget.task.endDate),
                ),
              ],
            const SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.blue),
                    ),
                    onPressed: () {
                      context.router.pop();
                      context.router.push(TaskEditRoute(task: widget.task));
                    },
                    child: const Text('Edit Task'),
                  ),
                ),
                if (widget.task.status != TaskStatus.completed)
                  ...[
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _onActionButtonClicked,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          elevation: 0.0,
                        ),
                        child: Text(_actionButtonText),
                      ),
                    ),
                  ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onActionButtonClicked() {
    if (widget.task.status == TaskStatus.toDo) {
      ref.read(taskDetailNotifierProvider.notifier).updateTaskToInProgress(widget.task);
    } else if (widget.task.status == TaskStatus.inProgress) {
      ref.read(taskDetailNotifierProvider.notifier).updateTaskToCompeted(widget.task);
    }
  }

  String _formattedDateText(DateTime? dateTime) {
    return dateTime != null ? DateFormat('EEE, MMM d, h:mm a').format(dateTime) : '';
  }
}

class LabelWithValue extends StatelessWidget {
  const LabelWithValue({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralInputLabel(
          label: label,
          labelStyle: textTheme.labelLarge?.copyWith(
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          value,
          style: textTheme.titleMedium,
        ),
      ],
    );
  }
}
