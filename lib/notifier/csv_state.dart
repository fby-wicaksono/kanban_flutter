import 'package:freezed_annotation/freezed_annotation.dart';

part 'csv_state.freezed.dart';

@freezed
class CsvState with _$CsvState {
  const factory CsvState.initial() = CsvStateInitial;
  const factory CsvState.loading() = CsvStateLoading;
  const factory CsvState.success() = CsvStateSuccess;
  const factory CsvState.failed() = CsvStateFailed;
}