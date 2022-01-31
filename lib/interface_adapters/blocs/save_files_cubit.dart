import 'dart:async';

import 'package:xdev_test/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'save_files_state.dart';

class SaveFilesCubit extends Cubit<SaveFilesState> {
  SaveFilesCubit(this._interactor) : super(const NotSavedFilesState()) {
    _subscription = _interactor.saveEvents.listen((SaveFilesEvent event) {
      emit(const SavedFilesState());
    });
  }

  final SaveFilesInteractor _interactor;

  late final StreamSubscription _subscription;

  Future<void> saveFiles() async {
    emit(const SavingFilesState());
    await _interactor.save();
  }

  @override
  Future<void> close() async {
    await super.close();
    _subscription.cancel();
  }
}
