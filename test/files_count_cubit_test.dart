import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:xdev_test/interface_adapters/interface_adapters.dart';

void main() async {
  group('FilesCountCubit', () {
    late FilesCountCubit cubit;

    setUp(() {
      cubit = FilesCountCubit();
    });

    test('$NoFilesCountState', () {
      expect(cubit.state, const NoFilesCountState());
    });

    blocTest(
      'incrementNotUploaded',
      build: () => cubit,
      act: (FilesCountCubit bloc) {
        bloc
          ..incrementNotUploaded()
          ..incrementNotUploaded();
      },
      expect: () => const [
        LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
        LoadingInProgressFilesCountState(remainingFiles: 2, totalFiles: 2),
      ],
    );

    blocTest(
      'incrementUploaded',
      build: () => cubit,
      act: (FilesCountCubit bloc) {
        bloc
          ..incrementNotUploaded()
          ..incrementNotUploaded()
          ..incrementUploaded()
          ..incrementUploaded();
      },
      expect: () => const [
        LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
        LoadingInProgressFilesCountState(remainingFiles: 2, totalFiles: 2),
        LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 2),
        LoadingFinishedFilesCountState(totalFiles: 2),
      ],
    );

    group('decrementUploaded', () {
      blocTest(
        'result is $LoadingInProgressFilesCountState',
        build: () => cubit,
        act: (FilesCountCubit bloc) {
          bloc
            ..incrementNotUploaded()
            ..incrementNotUploaded()
            ..incrementUploaded()
            ..decrementUploaded();
        },
        expect: () => const [
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
          LoadingInProgressFilesCountState(remainingFiles: 2, totalFiles: 2),
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 2),
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
        ],
      );

      blocTest(
        'result is $NoFilesCountState',
        build: () => cubit,
        act: (FilesCountCubit bloc) {
          bloc
            ..incrementNotUploaded()
            ..incrementUploaded()
            ..decrementUploaded();
        },
        expect: () => const [
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
          LoadingFinishedFilesCountState(totalFiles: 1),
          NoFilesCountState(),
        ],
      );

      blocTest(
        'result is $LoadingFinishedFilesCountState',
        build: () => cubit,
        act: (FilesCountCubit bloc) {
          bloc
            ..incrementNotUploaded()
            ..incrementNotUploaded()
            ..incrementUploaded()
            ..incrementUploaded()
            ..decrementUploaded();
        },
        expect: () => const [
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
          LoadingInProgressFilesCountState(remainingFiles: 2, totalFiles: 2),
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 2),
          LoadingFinishedFilesCountState(totalFiles: 2),
          LoadingFinishedFilesCountState(totalFiles: 1),
        ],
      );
    });

    group('decrementNotUploaded', () {
      blocTest(
        'result is $NoFilesCountState',
        build: () => cubit,
        act: (FilesCountCubit bloc) {
          bloc
            ..incrementNotUploaded()
            ..decrementNotUploaded();
        },
        expect: () => const [
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
          NoFilesCountState(),
        ],
      );

      blocTest(
        'result is $LoadingInProgressFilesCountState',
        build: () => cubit,
        act: (FilesCountCubit bloc) {
          bloc
            ..incrementNotUploaded()
            ..incrementNotUploaded()
            ..decrementNotUploaded();
        },
        expect: () => const [
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
          LoadingInProgressFilesCountState(remainingFiles: 2, totalFiles: 2),
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
        ],
      );

      blocTest(
        'result is $LoadingFinishedFilesCountState',
        build: () => cubit,
        act: (FilesCountCubit bloc) {
          bloc
            ..incrementNotUploaded()
            ..incrementNotUploaded()
            ..incrementUploaded()
            ..decrementNotUploaded();
        },
        expect: () => const [
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 1),
          LoadingInProgressFilesCountState(remainingFiles: 2, totalFiles: 2),
          LoadingInProgressFilesCountState(remainingFiles: 1, totalFiles: 2),
          LoadingFinishedFilesCountState(totalFiles: 1),
        ],
      );
    });
  });
}
