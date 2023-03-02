import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanban_flutter_sample/notifier/csv_notifier.dart';
import 'package:kanban_flutter_sample/notifier/csv_state.dart';

final csvNotifierProvider =
    StateNotifierProvider.autoDispose<CsvNotifier, CsvState>((ref) => CsvNotifier(ref));
