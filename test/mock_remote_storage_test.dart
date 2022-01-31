import 'package:flutter_test/flutter_test.dart';
import 'package:xdev_test/domain/domain.dart';

import 'fake_file_entity.dart';
import 'mock_remote_storage.dart';

void main() {
  test('MockRemoteStorage', () async {
    final MockRemoteStorage remote = MockRemoteStorage(
      durations: [100, 100, 100, 100],
    );

    for (FakeFileEntity file in [
      FakeFileEntity(fileId: '0', name: 'file0'),
      FakeFileEntity(fileId: '1', name: 'file1'),
      FakeFileEntity(fileId: '2', name: 'file2'),
      FakeFileEntity(fileId: '3', name: 'file3'),
    ]) {
      await remote
          .uploadFile(FakeFileEntity(fileId: file.fileId, name: file.name))
          .then((UploadResult value) {
        expect(value, UploadSuccess(fileId: file.fileId, fileName: file.name));
      });
    }

    await remote
        .uploadFile(FakeFileEntity(fileId: '4', name: 'file4'))
        .then((UploadResult value) {
      expect(value, const UploadLimitExceeded(fileId: '4', fileName: 'file4'));
    });
  });
}
