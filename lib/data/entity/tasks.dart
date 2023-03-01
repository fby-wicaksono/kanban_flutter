import 'package:drift/drift.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';

enum TaskStatus {
  toDo('To Do'),
  inProgress('In Progress'),
  completed('Completed');

  final String statusName;
  const TaskStatus(this.statusName);
}

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get label => text().withLength(max: 20)();
  TextColumn get description => text()();
  TextColumn get status => textEnum<TaskStatus>()();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
}

extension TaskExtension on Task {
  String getElapsedTime(DateTime? dateTime) {
    final dateToCompare = dateTime ?? DateTime.now();

    if (startDate != null) {
      final durationDiff = dateToCompare.difference(startDate!);
      final stringList = [];

      if (durationDiff.inDays > 0) {
        stringList.add('${durationDiff.inDays} Days');
      }

      if (durationDiff.inHours > 0) {
        stringList.add('${durationDiff.inHours % 24} Hours');
      }

      stringList.add('${durationDiff.inMinutes % 60} Minutes');
      return stringList.join(', ');
    }

    return '';
  }
}