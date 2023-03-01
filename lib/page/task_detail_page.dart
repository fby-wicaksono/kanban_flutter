import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';
import 'package:kanban_flutter_sample/notifier/task_detail_state.dart';
import 'package:kanban_flutter_sample/provider/task_detail_provider.dart';
import 'package:kanban_flutter_sample/provider/task_list_provider.dart';
import 'package:kanban_flutter_sample/util/app_helper.dart';
import 'package:kanban_flutter_sample/widget/general_input_label.dart';
import 'package:kanban_flutter_sample/widget/general_text_input.dart';

class TaskDetailPage extends ConsumerStatefulWidget {
  const TaskDetailPage({
    Key? key,
    this.task,
  }) : super(key: key);

  final Task? task;

  @override
  ConsumerState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends ConsumerState<TaskDetailPage> {
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

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      titleController.text = widget.task?.title ?? '';
      labelController.text = widget.task?.label ?? '';
      descriptionController.text = widget.task?.description ?? '';

      ref.read(selectedDueDateProvider.notifier).state = widget.task?.endDate;
      ref.read(selectedStatusProvider.notifier).state = widget.task?.status ?? TaskStatus.toDo;
    });
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

    final selectedStatus = ref.watch(selectedStatusProvider);

    ref.listen(selectedDueDateProvider, (_, updatedDueDate) {
      dateController.text = _formattedDateText(updatedDueDate);
    });

    ref.listen(taskDetailNotifierProvider, (_, state) {
      if (state is TaskDetailStateFailed) {
        ScaffoldMessenger.of(context).showSnackBar(generalAppSnackbar(message: state.errorMessage));
      } else if (state is TaskDetailStatesuccessAdded) {
        ScaffoldMessenger.of(context).showSnackBar(generalAppSnackbar(message: 'Task Successfully Added'));

        ref.read(taskNotifierProvider.notifier).addNewTask(task: state.task);
        context.router.pop();
      } else if (state is TaskDetailStatesuccessEdited) {
        ScaffoldMessenger.of(context).showSnackBar(generalAppSnackbar(message: 'Task Successfully Edited'));
        ref.read(taskNotifierProvider.notifier).editTask(state.task);

        context.router.pop();
      } else if (state is TaskDetailStatesuccessDeleted) {
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
            const SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GeneralTextInput(
                    label: 'Due Date',
                    controller: dateController,
                    isReadOnly: true,
                  ),
                ),
                IconButton(
                  onPressed: _selectDueDate,
                  icon: const Icon(
                    Icons.calendar_today_sharp,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            GeneralTextInput(
              label: 'Description',
              controller: descriptionController,
              minLines: 4,
              maxLines: 4,
              inputStyle: textTheme.bodyLarge,
            ),
            const SizedBox(height: 20.0),
            const GeneralInputLabel(label: 'Status'),
            StatusOptions(selectedStatus: selectedStatus),
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
    ref.read(taskDetailNotifierProvider.notifier).addTaskToDatabase(
          title: titleController.text,
          label: labelController.text,
          description: descriptionController.text,
          status: ref.read(selectedStatusProvider.notifier).state,
          endDate: ref.read(selectedDueDateProvider.notifier).state,
        );
  }

  void editTask() {
    if (widget.task != null) {
      ref.read(taskDetailNotifierProvider.notifier).editTask(
            id: widget.task!.id,
            title: titleController.text,
            label: labelController.text,
            description: descriptionController.text,
            status: ref.read(selectedStatusProvider.notifier).state,
            endDate: ref.read(selectedDueDateProvider.notifier).state,
          );
    }
  }

  void deleteTask() {
    if (widget.task != null) {
      ref.read(taskDetailNotifierProvider.notifier).deleteTask(widget.task!);
    }
  }

  void _selectDueDate() async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );

    if (selectedDate != null) {
      ref.read(selectedDueDateProvider.notifier).state = selectedDate;
    }
  }

  String _formattedDateText(DateTime? dateTime) {
    return dateTime != null ? DateFormat.yMMMMd().format(dateTime) : '';
  }
}

class StatusOptions extends ConsumerWidget {
  const StatusOptions({
    Key? key,
    required this.selectedStatus,
  }) : super(key: key);

  final TaskStatus selectedStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      spacing: 10.0,
      children: TaskStatus.values
          .map(
            (status) => ChoiceChip(
              label: Text(status.statusName),
              shape: const StadiumBorder(
                side: BorderSide(
                  color: Colors.blue,
                ),
              ),
              backgroundColor: Colors.transparent,
              selectedColor: Colors.blue.withOpacity(0.4),
              selected: selectedStatus == status,
              onSelected: (selected) => selected ? ref.read(selectedStatusProvider.notifier).state = status : null,
            ),
          )
          .toList(),
    );
  }
}
