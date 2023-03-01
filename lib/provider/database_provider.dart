import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/repository/task_repo.dart';

final databaseProvider = Provider.autoDispose((ref) => AppDatabase());

final taskRepoProvider = Provider.autoDispose((ref) {
  final database = ref.read(databaseProvider);
  return TaskRepo(database: database);
});
