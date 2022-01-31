/// Интерфейс управления сохранением файлов.
abstract class SaveFilesInputPort {
  /// Команда "Сохранить".
  Future<void> save();
}
