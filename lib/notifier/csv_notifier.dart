import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/data/drift_client.dart';
import 'package:kanban_flutter_sample/notifier/csv_state.dart';
import 'package:kanban_flutter_sample/provider/task_list_provider.dart';
import 'package:kanban_flutter_sample/util/app_helper.dart';
import 'package:path_provider/path_provider.dart';

class CsvNotifier extends StateNotifier<CsvState> {
  CsvNotifier(this.ref) : super(const CsvState.initial());

  final Ref ref;

  void generateCsvFile() async {
    final csvData = const ListToCsvConverter().convert(_convertListToDataList());
    final directory = (await getApplicationDocumentsDirectory()).path;
    final path = '$directory/csv-${DateTime.now()}.csv';

    state = const CsvState.loading();

    try {
      final file = File(path);
      await file.writeAsString(csvData);

      state = const CsvState.success();
    } catch(error) {
      state = const CsvState.success();
    }
  }

  List<List<String>> _convertListToDataList() {
    final List<Task> taskList = ref.read(taskNotifierProvider.notifier).state;

    final List<List<String>> dataList = [];
    dataList.add(['ID', 'Title', 'Label', 'Description', 'Status', 'Start Date', 'End Date']);

    for (final task in taskList) {
      dataList.add([
        task.id.toString(),
        task.title,
        task.label,
        task.description,
        task.status.statusName,
        formattedDateText(task.startDate),
        formattedDateText(task.endDate),
      ]);
    }

    return dataList;
  }
}
