import 'package:freezed_annotation/freezed_annotation.dart';

part 'files_count_state.freezed.dart';

@freezed
class FilesCountState with _$FilesCountState {
  /// Нет файлов в очереди на загрузку.
  const factory FilesCountState.noFiles() = NoFilesCountState;

  /// Загрузка файлов в процессе.
  const factory FilesCountState.inProgress({
    required int totalFiles,
    required int remainingFiles,
  }) = LoadingInProgressFilesCountState;

  /// Загрузка файлов завершена.
  const factory FilesCountState.loadingFinished({
    required int totalFiles,
  }) = LoadingFinishedFilesCountState;
}
