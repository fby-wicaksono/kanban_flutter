import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/data/entity/tasks.dart';

Task buildTaskFromTemplate({
  int id = 1,
  String title = 'title 1',
  String label = 'label 1',
  String description = 'description 1',
  TaskStatus status = TaskStatus.toDo,
  required DateTime startDate,
  required DateTime endDate,
}) {
  return Task(
    id: id,
    title: title,
    label: label,
    description: description,
    status: status,
    startDate: startDate,
    endDate: endDate,
  );
}
