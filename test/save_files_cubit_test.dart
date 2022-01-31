import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:xdev_test/domain/domain.dart';
import 'package:xdev_test/interface_adapters/interface_adapters.dart';

void main() async {
  group('SaveFilesCubit', () {
    blocTest(
      '$SaveFilesCubit',
      build: () => SaveFilesCubit(SaveFilesInteractor()),
      act: (SaveFilesCubit cubit) async {
        for (var i = 0; i < 3; i++) {
          await cubit.saveFiles();
        }
      },
      expect: () => const [
        // Saving 1
        SavingFilesState(),
        SavedFilesState(),
        // Saving 2
        SavingFilesState(),
        SavedFilesState(),
        // Saving 3
        SavingFilesState(),
        SavedFilesState(),
      ],
    );
  });
}
