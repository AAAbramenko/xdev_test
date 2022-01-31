import 'package:flutter_test/flutter_test.dart';
import 'package:xdev_test/data/data.dart';
import 'package:xdev_test/domain/domain.dart';

import 'fake_file_entity.dart';

void main() {
  test('FilesRemoteStorage', () async {
    final FilesRemoteStorage remote = FilesRemoteStorage(
      maxDuration: 100,
      minDuration: 100,
      uploadLimit: 3,
    );

    await remote
        .uploadFile(FakeFileEntity(fileId: '0', name: 'file0'))
        .then((UploadResult value) {
      expect(value, const UploadSuccess(fileId: '0', fileName: 'file0'));
    });
    await remote
        .uploadFile(FakeFileEntity(fileId: '1', name: 'file1'))
        .then((UploadResult value) {
      expect(value, const UploadSuccess(fileId: '1', fileName: 'file1'));
    });
    await remote
        .uploadFile(FakeFileEntity(fileId: '2', name: 'file2'))
        .then((UploadResult value) {
      expect(value, const UploadSuccess(fileId: '2', fileName: 'file2'));
    });
    await remote
        .uploadFile(FakeFileEntity(fileId: '3', name: 'file3'))
        .then((UploadResult value) {
      expect(value is UploadLimitExceeded, true);
    });
  });
}
