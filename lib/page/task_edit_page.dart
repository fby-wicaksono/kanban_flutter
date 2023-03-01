import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/notifier/edit_task_state.dart';
import 'package:kanban_flutter_sample/provider/edit_task_provider.dart';
import 'package:kanban_flutter_sample/provider/task_list_provider.dart';
import 'package:kanban_flutter_sample/util/app_helper.dart';
import 'package:kanban_flutter_sample/widget/general_text_input.dart';

class TaskEditPage extends ConsumerStatefulWidget {
  const TaskEditPage({
    Key? key,
    this.task,
  }) : super(key: key);

  final Task? task;

  @override
  ConsumerState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends ConsumerState<TaskEditPage> {
  final titleController = TextEditingController();
  final labelController = TextEditingController();
  final dateController = TextEditingController();
  final descriptionController = TextEditingController();

  bool get _isCreateNewTask {
    return widget.task == null;
  }

  String get _pageTitle {
    return _isCreateNewTask ? 'New Task' : 'Edit Task';
  }

  @override
  void initState() {
    super.initState();

    titleController.text = widget.task?.title ?? '';
    labelController.text = widget.task?.label ?? '';
    descriptionController.text = widget.task?.description ?? '';
  }

  @override
  void dispose() {
    titleController.dispose();
    labelController.dispose();
    dateController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    ref.listen(editTaskNotifierProvider, (_, state) {
      if (state is EditTaskStateFailed) {
        ScaffoldMessenger.of(context).showSnackBar(generalAppSnackbar(message: state.errorMessage));
      } else if (state is EditTaskStatesuccessAdded) {
        ScaffoldMessenger.of(context).showSnackBar(generalAppSnackbar(message: 'Task Successfully Added'));

        ref.read(taskNotifierProvider.notifier).addNewTask(task: state.task);
        context.router.pop();
      } else if (state is EditTaskStatesuccessEdited) {
        ScaffoldMessenger.of(context).showSnackBar(generalAppSnackbar(message: 'Task Successfully Edited'));
        ref.read(taskNotifierProvider.notifier).editTask(state.task);

        context.router.pop();
      } else if (state is EditTaskStatesuccessDeleted) {
        ScaffoldMessenger.of(context).showSnackBar(generalAppSnackbar(message: 'Task Successfully Deleted'));
        ref.read(taskNotifierProvider.notifier).deleteTask(state.task);

        context.router.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        actions: [
          if (!_isCreateNewTask)
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ),
              onPressed: deleteTask,
            ),
        ],
        title: Text(_pageTitle, style: textTheme.titleLarge),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white12,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GeneralTextInput(
              label: 'Title',
              controller: titleController,
              minLines: 2,
              maxLines: 2,
            ),
            const SizedBox(height: 20.0),
            GeneralTextInput(
              label: 'Label',
              controller: labelController,
              maxLength: 20,
            ),
            const SizedBox(height: 15.0),
            GeneralTextInput(
              label: 'Description',
              controller: descriptionController,
              minLines: 4,
              maxLines: 4,
              inputStyle: textTheme.bodyLarge,
            ),
            const SizedBox(height: 40.0),
            if (_isCreateNewTask)
              ElevatedButton(
                onPressed: addNewTask,
                child: const Text('Add Task'),
              ),
            if (!_isCreateNewTask)
              ElevatedButton(
                onPressed: editTask,
                child: const Text('Edit Task'),
              ),
          ],
        ),
      ),
    );
  }

  void addNewTask() {
    ref.read(editTaskNotifierProvider.notifier).addTaskToDatabase(
          title: titleController.text,
          label: labelController.text,
          description: descriptionController.text,
        );
  }

  void editTask() {
    if (widget.task != null) {
      ref.read(editTaskNotifierProvider.notifier).editTask(
            id: widget.task!.id,
            title: titleController.text,
            label: labelController.text,
            description: descriptionController.text,
            status: widget.task!.status,
          );
    }
  }

  void deleteTask() {
    if (widget.task != null) {
      ref.read(editTaskNotifierProvider.notifier).deleteTask(widget.task!);
    }
  }
}
