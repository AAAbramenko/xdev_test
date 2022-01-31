import 'dart:async';

import 'save_files_event.dart';
import 'save_files_input_port.dart';

/// Реализация интерфейса сохранения файлов.
class SaveFilesInteractor implements SaveFilesInputPort {
  SaveFilesInteractor()
      : _saveController = StreamController<SaveFilesEvent>(),
        _isLocked = false;

  final StreamController<SaveFilesEvent> _saveController;

  /// Для предотвращения запуска одновременно нескольких процессов сохранения.
  bool _isLocked;

  @override
  Future<void> save() async {
    if (_isLocked) {
      return;
    }
    _isLocked = true;
    return Future<void>.sync(() {
      _saveController.add(const SaveFilesEvent());
      _isLocked = false;
    });
  }

  Stream<SaveFilesEvent> get saveEvents => _saveController.stream;
}
