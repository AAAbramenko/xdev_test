import 'package:meta/meta.dart';

@immutable
class FileEntity<D> {
  const FileEntity({
    required this.fileId,
    required this.fileData,
    required this.name,
  });

  /// Идентификатор файла.
  final String fileId;

  /// Содержимое файла.
  final D fileData;

  /// Имя файла.
  final String name;
}
