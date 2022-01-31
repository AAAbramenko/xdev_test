import 'package:flutter_bloc/flutter_bloc.dart';

import 'files_count_state.dart';

class FilesCountCubit extends Cubit<FilesCountState> {
  FilesCountCubit()
      : super(
          const NoFilesCountState(),
        );

  /// Добавить загруженный файл.
  void incrementUploaded() {
    state.whenOrNull(
      inProgress: (
        int totalFiles,
        int remainingFiles,
      ) {
        if (remainingFiles == 1) {
          emit(LoadingFinishedFilesCountState(totalFiles: totalFiles));
        } else {
          emit(LoadingInProgressFilesCountState(
            remainingFiles: remainingFiles - 1,
            totalFiles: totalFiles,
          ));
        }
      },
    );
  }

  /// Добавить загружаемый файл или файл в очереди на загрузку.
  void incrementNotUploaded() {
    state.whenOrNull(
      noFiles: () {
        emit(const LoadingInProgressFilesCountState(
          totalFiles: 1,
          remainingFiles: 1,
        ));
      },
      inProgress: (
        int totalFiles,
        int remainingFiles,
      ) {
        emit(LoadingInProgressFilesCountState(
          totalFiles: totalFiles + 1,
          remainingFiles: remainingFiles + 1,
        ));
      },
      loadingFinished: (int totalFiles) {
        emit(LoadingInProgressFilesCountState(
          totalFiles: totalFiles + 1,
          remainingFiles: 1,
        ));
      },
    );
  }

  /// Убрать загруженный файл.
  void decrementUploaded() {
    state.whenOrNull(
      inProgress: (
        int totalFiles,
        int remainingFiles,
      ) {
        emit(LoadingInProgressFilesCountState(
          totalFiles: totalFiles - 1,
          remainingFiles: remainingFiles,
        ));
      },
      loadingFinished: (int totalFiles) {
        if (totalFiles == 1) {
          emit(const NoFilesCountState());
        } else {
          emit(LoadingFinishedFilesCountState(totalFiles: totalFiles - 1));
        }
      },
    );
  }

  /// Убрать загружаемый или в очереди на загрузку.
  void decrementNotUploaded() {
    state.whenOrNull(
      inProgress: (
        int totalFiles,
        int remainingFiles,
      ) {
        if (totalFiles == 1) {
          emit(const NoFilesCountState());
        } else {
          if (remainingFiles == 1) {
            emit(LoadingFinishedFilesCountState(totalFiles: totalFiles - 1));
          } else {
            emit(LoadingInProgressFilesCountState(
              remainingFiles: remainingFiles - 1,
              totalFiles: totalFiles - 1,
            ));
          }
        }
      },
    );
  }
}
