import 'dart:async';
import 'dart:ui';

import 'package:xdev_test/utils/utils.dart';

import '../../entities/entities.dart';
import '../gateways/gateways.dart';
import 'output_upload_event.dart';
import 'upload_file_input_port.dart';

class UploadFileInteractor<D> implements UploadFileInputPort {
  /// [currentMax] - максимальное количество одновременно загружаемых файлов.
  UploadFileInteractor({
    required this.localGateway,
    required this.remoteGateway,
    required int currentMax,
  })  : _outUploadController = StreamController<OutputUploadEvent>(),
        _filesNames = <String, String>{},
        _manager = TaskManager<String, UploadResult>(currentMax) {
    _manager.tasksResults.listen((TaskResult<String, UploadResult> event) {
      _outUploadController.add(event.result.when<OutputUploadEvent>(
        success: (String fileName, String fileId) {
          return FinishedUploadEvent(
            fileId: fileId,
            fileName: _filesNames[fileId]!,
          );
        },
        fault: (String fileName, String fileId, String description) {
          return FaultUploadEvent(
            fileId: fileId,
            fileName: _filesNames[fileId]!,
            description: description,
          );
        },
        limitExceeded: (String fileName, String fileId) {
          return UploadLimitExceededEvent(
            fileId: fileId,
            fileName: _filesNames[fileId]!,
          );
        },
      ));
    });
  }

  final LocalStorageGateway<D> localGateway;
  final RemoteStorageGateway<D> remoteGateway;
  final StreamController<OutputUploadEvent> _outUploadController;
  final TaskManager<String, UploadResult> _manager;

  /// Нужно только для хранения имён загружаемых файлов для случая отмены
  /// загрузки файла. Событие [CancelFileUploadEvent] требует имени файла.
  /// Сделано для упрощения на стороне UI. Можно исключить
  /// [CancelFileUploadEvent.fileName], но в таком случае потребуется сохранять
  /// имена файлов на стороне UI.
  final Map<String, String> _filesNames;

  @override
  Future<void> uploadFile() async {
    await localGateway.selectFile().then((FileEntity<D>? fileEntity) {
      if (fileEntity != null) {
        _outUploadController.add(WaitingUploadEvent(
          fileName: fileEntity.name,
          fileId: fileEntity.fileId,
        ));
        _filesNames[fileEntity.fileId] = fileEntity.name;
        _manager.addTask(
          UploadTask<String, D>(
            taskId: fileEntity.fileId,
            remoteGateway: remoteGateway,
            fileEntity: fileEntity,
            onStart: () {
              _outUploadController.add(
                StartUploadEvent(
                  fileId: fileEntity.fileId,
                  fileName: fileEntity.name,
                ),
              );
            },
          ),
        );
      }
    });
  }

  /// Нет проверки на существование файла с соответствующим [fileId].
  @override
  void cancelUploading(String fileId) {
    _manager.cancelTask(fileId);
    _outUploadController.add(
      CancelFileUploadEvent(
        fileId: fileId,
        fileName: _filesNames[fileId]!,
      ),
    );
  }

  @override
  void resetAll() {
    _manager.cancelAll();
    _outUploadController.add(const CancelAllUploadEvent());
    _filesNames.clear();
  }

  /// Состояния загрузки файлов.
  Stream<OutputUploadEvent> get uploadEvents => _outUploadController.stream;
}

/// [FileEntity.fileId] используется в качестве идентификатора задачи.
class UploadTask<String, D> extends Task<String, UploadResult> {
  UploadTask({
    required String taskId,
    required this.remoteGateway,
    required this.fileEntity,
    required this.onStart,
  })  : _completer = Completer<UploadResult>(),
        super(taskId);

  final RemoteStorageGateway<D> remoteGateway;
  final FileEntity<D> fileEntity;
  final Completer<UploadResult> _completer;

  /// Коллбек только для выброса события [StartUploadEvent] из
  /// [UploadFileInteractor.uploadEvents];
  final VoidCallback onStart;

  @override
  void cancel() {
    remoteGateway.stopUploading(fileEntity.fileId);
  }

  @override
  void start() {
    onStart();
    remoteGateway.uploadFile(fileEntity).then(_completer.complete);
  }

  @override
  Future<UploadResult> get result => _completer.future;
}
