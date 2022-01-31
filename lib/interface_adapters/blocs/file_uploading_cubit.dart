import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdev_test/domain/domain.dart';

import 'file_uploading_state.dart';
import 'files_count_cubit.dart';

class FileUploadingCubit extends Cubit<FileUploadingState> {
  FileUploadingCubit({
    required this.interactor,
    this.countCubit,
  }) : super(const FileUploadingInitialState()) {
    _subscription = interactor.uploadEvents.listen((OutputUploadEvent event) {
      event.when(
        waiting: (String fileName, String fileId) {
          countCubit?.incrementNotUploaded();
          emit(FileWaitingState(fileName: fileName, fileId: fileId));
        },
        start: (String fileName, String fileId) {
          emit(FileUploadingProgressState(fileName: fileName, fileId: fileId));
        },
        finished: (String fileName, String fileId) {
          countCubit?.incrementUploaded();
          emit(FileUploadedState(fileName: fileName, fileId: fileId));
        },
        cancelFile: (String fileName, String fileId) {
          emit(FileUploadCancelledState(fileName: fileName, fileId: fileId));
        },
        cancelAll: () {
          emit(const AllUploadsCancelledState());
        },
        fault: (String fileName, String fileId, String description) {
          emit(
            FileUploadFaultState(
              fileName: fileName,
              fileId: fileId,
              description: description,
            ),
          );
        },
        limitExceeded: (String fileName, String fileId) {
          emit(UploadsLimitExceededState(
            fileName: fileName,
            fileId: fileId,
          ));
        },
      );
    });
  }

  final UploadFileInteractor<List<int>> interactor;
  late final StreamSubscription<OutputUploadEvent> _subscription;
  final FilesCountCubit? countCubit;

  Future<void> uploadFile() async {
    await interactor.uploadFile();
  }

  void reset() {
    countCubit?.reset();
    interactor.resetAll();
  }

  void cancelUpload(String fileId) {
    interactor.cancelUploading(fileId);
  }

  @override
  Future<void> close() async {
    await super.close();
    _subscription.cancel();
  }
}
