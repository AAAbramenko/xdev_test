/// Основной интерфейс для взаимодействия с внешним слоем для управления
/// загрузкой файлов.
abstract class UploadFileInputPort {
  /// Отмена загрузки файла.
  void cancelUploading(String fileId);

  /// Загрузить файл.
  Future<void> uploadFile();

  /// Отмена всех загрузок.
  void resetAll();
}
