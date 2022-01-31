import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_uploading_state.freezed.dart';

/// Состояние загрузки файлов.
@freezed
class FileUploadingState with _$FileUploadingState {
  /// Начальное состояние.
  const factory FileUploadingState.initial() = FileUploadingInitialState;

  /// Файл добавлен в очередь на загрузку
  const factory FileUploadingState.waiting({
    required String fileName,
    required String fileId,
  }) = FileWaitingState;

  /// Файл в процессе загрузки.
  const factory FileUploadingState.uploading({
    required String fileName,
    required String fileId,
  }) = FileUploadingProgressState;

  /// Файл загружен.
  const factory FileUploadingState.uploaded({
    required String fileName,
    required String fileId,
  }) = FileUploadedState;

  /// Ошибка при загрузке файла
  /// Нет в ТЗ, на всякий случай предусмотрено.
  const factory FileUploadingState.fault({
    required String fileName,
    required String fileId,
    required String description,
  }) = FileUploadFaultState;

  /// Отмена загрузки файла.
  const factory FileUploadingState.cancel({
    required String fileName,
    required String fileId,
  }) = FileUploadCancelledState;

  /// Отмена загрузки всех файлов.
  const factory FileUploadingState.cancelAll() = AllUploadsCancelledState;

  /// Превышено максимально допустимое число файлов для загрузки.
  const factory FileUploadingState.limitExceeded({
    required String fileName,
    required String fileId,
  }) = UploadsLimitExceededState;
}
