import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_result.freezed.dart';

/// Результат процесса загрузки.
@freezed
class UploadResult with _$UploadResult {
  /// Успешная загрузка.
  const factory UploadResult.success({
    required String fileName,
    required String fileId,
  }) = UploadSuccess;

  /// Загрузка с ошибкой. [description] - описание ошибки.
  ///
  /// В ТЗ этого нет, но, считаю есть смысл предусмотреть.
  const factory UploadResult.fault({
    required String fileName,
    required String fileId,
    required String description,
  }) = UploadFault;

  /// Превышен лимит по количеству загружаемых файлов.
  const factory UploadResult.limitExceeded({
    required String fileName,
    required String fileId,
  }) = UploadLimitExceeded;
}
