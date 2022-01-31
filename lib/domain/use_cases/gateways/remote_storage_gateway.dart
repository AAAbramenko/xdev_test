import 'package:xdev_test/domain/entities/entities.dart';

import 'upload_result.dart';

/// Интерфейс для загрузки файлов на сервер.
abstract class RemoteStorageGateway<D> {
  /// Возвращает класс, отражающий результат загрузки.
  Future<UploadResult> uploadFile(FileEntity<D> fileEntity);

  /// Приостанавливает загрузку файла.
  void stopUploading(String fileId);
}
