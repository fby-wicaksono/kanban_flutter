import 'package:drift/drift.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';

enum TaskStatus {
  toDo('To Do'),
  inProgress('In Progress'),
  completed('Completed');

  final String statusName;
  const TaskStatus(this.statusName);
}

enum DueDateStatus {
  notPassedDueDate,
  dueDateToday,
  passedDueDate
}

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get label => text().withLength(max: 20)();
  TextColumn get description => text()();
  TextColumn get status => textEnum<TaskStatus>()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
}

extension TaskExtension on Task {
  Duration getRemainingTime() {
    // add 1 day to deadline to make sure correct deadline calculation
    return endDate.add(const Duration(days: 1)).difference(DateTime.now());
  }

  DueDateStatus getDueDateStatus() {
    final durationDifference = getRemainingTime();

    if (durationDifference.isNegative) {
      return DueDateStatus.passedDueDate;
    }

    if (durationDifference.inDays == 0) {
      return DueDateStatus.dueDateToday;
    }

    return DueDateStatus.notPassedDueDate;
  }
}