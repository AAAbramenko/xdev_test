import 'package:flutter_test/flutter_test.dart';
import 'package:xdev_test/domain/domain.dart';
import 'package:xdev_test/interface_adapters/interface_adapters.dart';

import 'package:bloc_test/bloc_test.dart';

import 'fake_local_gateway.dart';
import 'mock_remote_storage.dart';

void main() {
  group('FileUploadingCubit', () {
    late FileUploadingCubit cubit;

    setUp(() {
      cubit = FileUploadingCubit(
        interactor: UploadFileInteractor(
          localGateway: FakeLocalGateway(),
          remoteGateway: MockRemoteStorage(
            durations: [
              250,
              1000,
              500,
              750,
              1000,
              250,
            ],
          ),
          currentMax: 3,
        ),
      );
    });

    test('Initial state', () {
      expect(cubit.state, const FileUploadingInitialState());
    });

    /// Очередность загрузки
    /// 0 X_____
    /// 1 XXXX__
    /// 2 XX____
    /// 3 _XXX__
    /// 4 __XXXX
    /// 5 ____X_
    blocTest(
      'Simple upload',
      build: () => cubit,
      act: (FileUploadingCubit cubit) {
        for (int i = 0; i < 6; i++) {
          cubit.uploadFile();
        }
      },
      wait: const Duration(milliseconds: 2000),
      expect: () => const [
        FileWaitingState(fileName: 'file0', fileId: '0'),
        FileUploadingProgressState(fileName: 'file0', fileId: '0'),
        FileWaitingState(fileName: 'file1', fileId: '1'),
        FileUploadingProgressState(fileName: 'file1', fileId: '1'),
        FileWaitingState(fileName: 'file2', fileId: '2'),
        FileUploadingProgressState(fileName: 'file2', fileId: '2'),
        FileWaitingState(fileName: 'file3', fileId: '3'),
        FileWaitingState(fileName: 'file4', fileId: '4'),
        FileWaitingState(fileName: 'file5', fileId: '5'),
        FileUploadingProgressState(fileName: 'file3', fileId: '3'),
        FileUploadedState(fileName: 'file0', fileId: '0'),
        FileUploadingProgressState(fileName: 'file4', fileId: '4'),
        FileUploadedState(fileName: 'file2', fileId: '2'),
        FileUploadingProgressState(fileName: 'file5', fileId: '5'),
        FileUploadedState(fileName: 'file1', fileId: '1'),
        FileUploadedState(fileName: 'file3', fileId: '3'),
        FileUploadedState(fileName: 'file5', fileId: '5'),
        FileUploadedState(fileName: 'file4', fileId: '4'),
      ],
    );

    blocTest(
      'Cancel upload some files',
      build: () => cubit,
      act: (FileUploadingCubit cubit) {
        for (int i = 0; i < 6; i++) {
          cubit.uploadFile();
        }

        Future.delayed(const Duration(milliseconds: 250)).then((_) {
          cubit.cancelUpload('1');
        });
      },
      wait: const Duration(milliseconds: 2000),
      expect: () => const [
        FileWaitingState(fileName: 'file0', fileId: '0'),
        FileUploadingProgressState(fileName: 'file0', fileId: '0'),
        FileWaitingState(fileName: 'file1', fileId: '1'),
        FileUploadingProgressState(fileName: 'file1', fileId: '1'),
        FileWaitingState(fileName: 'file2', fileId: '2'),
        FileUploadingProgressState(fileName: 'file2', fileId: '2'),
        FileWaitingState(fileName: 'file3', fileId: '3'),
        FileWaitingState(fileName: 'file4', fileId: '4'),
        FileWaitingState(fileName: 'file5', fileId: '5'),
        FileUploadingProgressState(fileName: 'file3', fileId: '3'),
        FileUploadCancelledState(fileName: 'file1', fileId: '1'),
        FileUploadingProgressState(fileName: 'file4', fileId: '4'),
        FileUploadedState(fileName: 'file0', fileId: '0'),
        FileUploadingProgressState(fileName: 'file5', fileId: '5'),
        FileUploadedState(fileName: 'file2', fileId: '2'),
        FileUploadedState(fileName: 'file5', fileId: '5'),
        FileUploadedState(fileName: 'file3', fileId: '3'),
        FileUploadedState(fileName: 'file4', fileId: '4'),
      ],
    );

    blocTest(
      'Cancel all uploading files',
      build: () => cubit,
      act: (FileUploadingCubit cubit) {
        for (int i = 0; i < 6; i++) {
          cubit.uploadFile();
        }

        Future.delayed(const Duration(milliseconds: 500), () {
          cubit.reset();
        });
      },
      wait: const Duration(milliseconds: 2000),
      expect: () => const [
        FileWaitingState(fileName: 'file0', fileId: '0'),
        FileUploadingProgressState(fileName: 'file0', fileId: '0'),
        FileWaitingState(fileName: 'file1', fileId: '1'),
        FileUploadingProgressState(fileName: 'file1', fileId: '1'),
        FileWaitingState(fileName: 'file2', fileId: '2'),
        FileUploadingProgressState(fileName: 'file2', fileId: '2'),
        FileWaitingState(fileName: 'file3', fileId: '3'),
        FileWaitingState(fileName: 'file4', fileId: '4'),
        FileWaitingState(fileName: 'file5', fileId: '5'),
        FileUploadingProgressState(fileName: 'file3', fileId: '3'),
        FileUploadedState(fileName: 'file0', fileId: '0'),
        AllUploadsCancelledState(),
      ],
    );

    test('Exceed upload limit', () {
      for (int i = 0; i < 7; i++) {
        cubit.uploadFile();
      }

      expect(
          cubit.stream,
          emitsInAnyOrder(const [
            FileWaitingState(fileName: 'file0', fileId: '0'),
            FileUploadingProgressState(fileName: 'file0', fileId: '0'),
            FileWaitingState(fileName: 'file1', fileId: '1'),
            FileUploadingProgressState(fileName: 'file1', fileId: '1'),
            FileWaitingState(fileName: 'file2', fileId: '2'),
            FileUploadingProgressState(fileName: 'file2', fileId: '2'),
            FileWaitingState(fileName: 'file3', fileId: '3'),
            FileWaitingState(fileName: 'file4', fileId: '4'),
            FileWaitingState(fileName: 'file5', fileId: '5'),
            FileWaitingState(fileName: 'file6', fileId: '6'),
            FileUploadingProgressState(fileName: 'file3', fileId: '3'),
            FileUploadedState(fileName: 'file0', fileId: '0'),
            FileUploadingProgressState(fileName: 'file4', fileId: '4'),
            FileUploadedState(fileName: 'file2', fileId: '2'),
            FileUploadingProgressState(fileName: 'file5', fileId: '5'),
            FileUploadingProgressState(fileName: 'file6', fileId: '6'),
            FileUploadedState(fileName: 'file1', fileId: '1'),
            FileUploadedState(fileName: 'file3', fileId: '3'),
            UploadsLimitExceededState(fileName: 'file6', fileId: '6'),
            FileUploadedState(fileName: 'file5', fileId: '5'),
            FileUploadedState(fileName: 'file4', fileId: '4'),
          ]));
    });
  });
}
