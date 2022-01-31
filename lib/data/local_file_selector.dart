import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:xdev_test/domain/domain.dart';

/// Реализация интерфейса для выбора файла с устройства пользователя.
///
/// В качестве идентификатора файла используется имя файла.
class LocalFileSelector implements LocalStorageGateway<List<int>> {
  @override
  Future<FileEntity<List<int>>?> selectFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result == null) {
      return null;
    }

    final PlatformFile file = result.files.single;

    return FileEntity(
      fileId: const Uuid().v4(),
      fileData: file.bytes ?? [],
      name: file.name,
    );
  }
}
