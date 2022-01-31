import 'package:freezed_annotation/freezed_annotation.dart';

part 'output_upload_event.freezed.dart';

/// Состояние загрузки файлов.
@freezed
class OutputUploadEvent with _$OutputUploadEvent {
  /// Файл поставлен в очередь на загрузку.
  const factory OutputUploadEvent.waiting({
    required String fileName,
    required String fileId,
  }) = WaitingUploadEvent;

  /// Начало загрузки файла.
  const factory OutputUploadEvent.start({
    required String fileName,
    required String fileId,
  }) = StartUploadEvent;

  /// Окончание загрузки файла.
  const factory OutputUploadEvent.finished({
    required String fileName,
    required String fileId,
  }) = FinishedUploadEvent;

  /// Отмена загрузки файла.
  const factory OutputUploadEvent.cancelFile({
    required String fileName,
    required String fileId,
  }) = CancelFileUploadEvent;

  /// Отмена всех загрузок.
  const factory OutputUploadEvent.cancelAll() = CancelAllUploadEvent;

  /// Ошибка загрузки файла, [description] - описание ошибки.
  const factory OutputUploadEvent.fault({
    required String fileName,
    required String fileId,
    required String description,
  }) = FaultUploadEvent;

  /// Превышено количество файлов, которое можно загрузить на сервер.
  const factory OutputUploadEvent.limitExceeded({
    required String fileName,
    required String fileId,
  }) = UploadLimitExceededEvent;
}
