import 'package:xdev_test/domain/entities/entities.dart';

/// Интерфейс для загрузки файла с устройства.
abstract class LocalStorageGateway<D> {
  /// Возвращает `null` если пользователь отменил выбор файла с устройства.
  Future<FileEntity<D>?> selectFile();
}
