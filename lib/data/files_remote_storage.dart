import 'dart:async';
import 'dart:math';

import 'package:async/async.dart';
import 'package:xdev_test/domain/domain.dart';

/// Реализация интерфейса для загрузки файлов на сервер.
class FilesRemoteStorage implements RemoteStorageGateway<List<int>> {
  /// [minDuration] - минимально возможная длительность загрузки
  /// [maxDuration] - максимально возможная длительность загрузки
  /// [uploadLimit] - максимальное количество файлов для загрузки
  FilesRemoteStorage({
    required this.minDuration,
    required this.maxDuration,
    required this.uploadLimit,
  })  : _random = Random(),
        _uploadCount = 0;

  /// В миллисекундах.
  final int minDuration;

  /// В миллисекундах
  final int maxDuration;
  final Map<String, CancelableOperation<UploadResult>> _tasks =
      <String, CancelableOperation<UploadResult>>{};
  final Random _random;

  /// Максимальное количество файлов, которое может быть загружено.
  final int uploadLimit;

  /// Текущее количество загруженных файлов.
  int _uploadCount;

  @override
  void stopUploading(String fileId) {
    _tasks[fileId]!.cancel();
    _tasks.remove(fileId);
    _uploadCount--;
  }

  @override
  Future<UploadResult> uploadFile(FileEntity<List<int>> fileEntity) {
    if (_uploadCount == uploadLimit) {
      return Future.sync(() => UploadLimitExceeded(
            fileName: fileEntity.name,
            fileId: fileEntity.fileId,
          ));
    }

    _uploadCount++;
    final CancelableOperation<UploadResult> cancellable =
        CancelableOperation<UploadResult>.fromFuture(
      Future.delayed(_randomDuration(), () {
        return UploadSuccess(
          fileName: fileEntity.name,
          fileId: fileEntity.fileId,
        );
      }),
    );
    _tasks[fileEntity.fileId] = cancellable;

    return cancellable.value;
  }

  Duration _randomDuration() {
    final int milliseconds = minDuration + _random.nextInt(maxDuration);

    return Duration(milliseconds: milliseconds);
  }
}
