import 'dart:async';

import 'package:async/async.dart';
import 'package:xdev_test/domain/domain.dart';

class MockRemoteStorage implements RemoteStorageGateway<List<int>> {
  MockRemoteStorage({required this.durations})
      : _iterator = durations.iterator,
        _uploadCount = 0,
        _uploadLimit = durations.length;

  final List<int> durations;
  final Iterator<int> _iterator;

  final Map<String, CancelableOperation<UploadResult>> _tasks =
      <String, CancelableOperation<UploadResult>>{};
  final int _uploadLimit;
  int _uploadCount;

  @override
  void stopUploading(String fileId) {
    _tasks[fileId]!.cancel();
    _tasks.remove(fileId);
    _uploadCount--;
  }

  @override
  Future<UploadResult> uploadFile(FileEntity<List<int>> fileEntity) {
    if (_uploadCount == _uploadLimit) {
      return Future.sync(() => UploadLimitExceeded(
            fileName: fileEntity.name,
            fileId: fileEntity.fileId,
          ));
    }

    _uploadCount++;
    _iterator.moveNext();
    final CancelableOperation<UploadResult> cancellable =
        CancelableOperation<UploadResult>.fromFuture(
      Future.delayed(Duration(milliseconds: _iterator.current), () {
        return UploadSuccess(
          fileName: fileEntity.name,
          fileId: fileEntity.fileId,
        );
      }),
    );
    _tasks[fileEntity.fileId] = cancellable;

    return cancellable.value;
  }
}
