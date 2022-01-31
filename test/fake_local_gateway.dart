import 'package:xdev_test/domain/domain.dart';

import 'fake_file_entity.dart';

class FakeLocalGateway implements LocalStorageGateway<List<int>> {
  int _count = 0;

  @override
  Future<FileEntity<List<int>>?> selectFile() async {
    return FakeFileEntity(fileId: _count.toString(), name: 'file${_count++}');
  }
}
