import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_files_state.freezed.dart';

@freezed
class SaveFilesState with _$SaveFilesState {
  /// Файлы не сохранены.
  const factory SaveFilesState.notSaved() = SavedFilesState;

  /// Файлы сохранены.
  const factory SaveFilesState.saved() = NotSavedFilesState;

  /// Файлы в процессе сохранения.
  const factory SaveFilesState.saving() = SavingFilesState;
}
