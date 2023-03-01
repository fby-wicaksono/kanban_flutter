import 'package:flutter/material.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({
    super.key,
    required this.task,
    required this.onItemPressed,
  });

  final Task task;
  final VoidCallback onItemPressed;

  String get _getDueDateText {
    switch(task.getDueDateStatus()) {
      case DueDateStatus.notPassedDueDate:
        return '${task.getRemainingTime().inDays} Days Remaining';
      case DueDateStatus.dueDateToday:
        return 'Due Date Today';
      case DueDateStatus.passedDueDate:
        return 'Passed Due Date';
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      color: Colors.white,
      child: InkWell(
        onTap: onItemPressed,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.label,
                style: textTheme.labelMedium?.copyWith(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                task.title,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                task.description,
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 10.0),
              const Divider(),
              const SizedBox(height: 6.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _getDueDateText,
                      textAlign: TextAlign.end,
                      style: _getDueDateTextStyle(textTheme),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle? _getDueDateTextStyle(TextTheme textTheme) {
    switch(task.getDueDateStatus()) {
      case DueDateStatus.notPassedDueDate:
        return textTheme.labelMedium?.copyWith(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        );
      case DueDateStatus.dueDateToday:
        return textTheme.labelMedium?.copyWith(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        );
      case DueDateStatus.passedDueDate:
        return textTheme.labelMedium?.copyWith(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        );
    }
  }
}
