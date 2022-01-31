import 'package:xdev_test/domain/domain.dart';

class FakeFileEntity extends FileEntity<List<int>> {
  FakeFileEntity({
    required String fileId,
    required String name,
  }) : super(
          fileId: fileId,
          fileData: List.filled(150, 0xFF),
          name: name,
        );
}
