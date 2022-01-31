import 'package:flutter/foundation.dart';
import 'package:xdev_test/interface_adapters/interface_adapters.dart';

typedef FileStatesMap = Map<String, FileUploadingState>;

class FilesStatesNotifier extends ChangeNotifier {
  FilesStatesNotifier(this.uploadingCubit)
      : filesStates = <String, FileUploadingState>{} {
    uploadingCubit.stream.listen((FileUploadingState state) {
      state.mapOrNull(
        waiting: (FileWaitingState state) {
          filesStates[state.fileId] = state;
          notifyListeners();
        },
        uploading: (FileUploadingProgressState state) {
          filesStates[state.fileId] = state;
          notifyListeners();
        },
        uploaded: (FileUploadedState state) {
          filesStates[state.fileId] = state;
          notifyListeners();
        },
        cancel: (FileUploadCancelledState state) {
          filesStates.remove(state.fileId);
          notifyListeners();
        },
        cancelAll: (AllUploadsCancelledState state) {
          filesStates.clear();
          notifyListeners();
        },
      );
    });
  }

  final FileUploadingCubit uploadingCubit;
  final FileStatesMap filesStates;
}
