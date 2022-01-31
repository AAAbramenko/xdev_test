import 'package:flutter/material.dart';

import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

/// Вместо интерфейсов `OutputPort` используются для взаимодействия с внешним
/// слоем используются потоки [Stream].
void main() {
  final LocalFileSelector local = LocalFileSelector();

  final FilesRemoteStorage remote = FilesRemoteStorage(
    maxDuration: 1000,
    minDuration: 15000,
    uploadLimit: 30,
  );

  final UploadFileInteractor<List<int>> uploadInteractor =
      UploadFileInteractor<List<int>>(
    localGateway: local,
    remoteGateway: remote,
    currentMax: 3,
  );

  final SaveFilesInteractor saveInteractor = SaveFilesInteractor();

  runApp(MyApp(
    uploadInteractor: uploadInteractor,
    saveInteractor: saveInteractor,
  ));
}
