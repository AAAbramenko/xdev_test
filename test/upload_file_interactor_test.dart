import 'package:flutter_test/flutter_test.dart';
import 'package:xdev_test/domain/domain.dart';

import 'fake_local_gateway.dart';
import 'mock_remote_storage.dart';

void main() {
  group('UploadFileInteractor', () {
    late UploadFileInteractor<List<int>> interactor;

    setUp(() {
      interactor = UploadFileInteractor<List<int>>(
        localGateway: FakeLocalGateway(),
        remoteGateway: MockRemoteStorage(durations: [
          250,
          1000,
          500,
          750,
          1000,
          250,
        ]),
        currentMax: 3,
      );
    });

    test('Simple upload', () async {
      for (int i = 0; i < 6; i++) {
        await interactor.uploadFile();
      }

      expect(
        interactor.uploadEvents,
        emitsInAnyOrder(
          const [
            WaitingUploadEvent(fileName: 'file0', fileId: '0'),
            WaitingUploadEvent(fileName: 'file1', fileId: '1'),
            WaitingUploadEvent(fileName: 'file2', fileId: '2'),
            WaitingUploadEvent(fileName: 'file3', fileId: '3'),
            WaitingUploadEvent(fileName: 'file4', fileId: '4'),
            WaitingUploadEvent(fileName: 'file5', fileId: '5'),
            StartUploadEvent(fileName: 'file0', fileId: '0'),
            StartUploadEvent(fileName: 'file1', fileId: '1'),
            StartUploadEvent(fileName: 'file2', fileId: '2'),
            StartUploadEvent(fileName: 'file3', fileId: '3'),
            StartUploadEvent(fileName: 'file4', fileId: '4'),
            StartUploadEvent(fileName: 'file5', fileId: '5'),
            FinishedUploadEvent(fileName: 'file0', fileId: '0'),
            FinishedUploadEvent(fileName: 'file1', fileId: '1'),
            FinishedUploadEvent(fileName: 'file2', fileId: '2'),
            FinishedUploadEvent(fileName: 'file3', fileId: '3'),
            FinishedUploadEvent(fileName: 'file4', fileId: '4'),
            FinishedUploadEvent(fileName: 'file5', fileId: '5'),
          ],
        ),
      );
    });

    test('Cancel upload some files', () async {
      for (int i = 0; i < 6; i++) {
        await interactor.uploadFile();
      }

      interactor
        ..cancelUploading('1')
        ..cancelUploading('4');

      expect(
        interactor.uploadEvents,
        emitsInAnyOrder(
          const [
            WaitingUploadEvent(fileName: 'file0', fileId: '0'),
            WaitingUploadEvent(fileName: 'file1', fileId: '1'),
            WaitingUploadEvent(fileName: 'file2', fileId: '2'),
            WaitingUploadEvent(fileName: 'file3', fileId: '3'),
            WaitingUploadEvent(fileName: 'file4', fileId: '4'),
            WaitingUploadEvent(fileName: 'file5', fileId: '5'),
            StartUploadEvent(fileName: 'file0', fileId: '0'),
            StartUploadEvent(fileName: 'file1', fileId: '1'),
            StartUploadEvent(fileName: 'file2', fileId: '2'),
            StartUploadEvent(fileName: 'file3', fileId: '3'),
            StartUploadEvent(fileName: 'file5', fileId: '5'),
            FinishedUploadEvent(fileName: 'file0', fileId: '0'),
            FinishedUploadEvent(fileName: 'file2', fileId: '2'),
            FinishedUploadEvent(fileName: 'file3', fileId: '3'),
            FinishedUploadEvent(fileName: 'file5', fileId: '5'),
            CancelFileUploadEvent(fileName: 'file1', fileId: '1'),
            CancelFileUploadEvent(fileName: 'file4', fileId: '4'),
          ],
        ),
      );
    });

    test('Cancel all uploading files', () async {
      for (int i = 0; i < 6; i++) {
        interactor.uploadFile();
      }

      Future.delayed(const Duration(milliseconds: 500), () {
        interactor.resetAll();
      });

      expect(
        interactor.uploadEvents,
        emitsInAnyOrder(
          const [
            WaitingUploadEvent(fileName: 'file0', fileId: '0'),
            WaitingUploadEvent(fileName: 'file1', fileId: '1'),
            WaitingUploadEvent(fileName: 'file2', fileId: '2'),
            WaitingUploadEvent(fileName: 'file3', fileId: '3'),
            WaitingUploadEvent(fileName: 'file4', fileId: '4'),
            WaitingUploadEvent(fileName: 'file5', fileId: '5'),
            StartUploadEvent(fileName: 'file0', fileId: '0'),
            StartUploadEvent(fileName: 'file1', fileId: '1'),
            StartUploadEvent(fileName: 'file2', fileId: '2'),
            StartUploadEvent(fileName: 'file3', fileId: '3'),
            FinishedUploadEvent(fileName: 'file0', fileId: '0'),
            CancelAllUploadEvent(),
          ],
        ),
      );
    });

    test('Exceed upload limit', () async {
      for (int i = 0; i < 7; i++) {
        interactor.uploadFile();
      }

      expect(
        interactor.uploadEvents,
        emitsInAnyOrder(
          const [
            WaitingUploadEvent(fileName: 'file0', fileId: '0'),
            WaitingUploadEvent(fileName: 'file1', fileId: '1'),
            WaitingUploadEvent(fileName: 'file2', fileId: '2'),
            WaitingUploadEvent(fileName: 'file3', fileId: '3'),
            WaitingUploadEvent(fileName: 'file4', fileId: '4'),
            WaitingUploadEvent(fileName: 'file5', fileId: '5'),
            WaitingUploadEvent(fileName: 'file6', fileId: '6'),
            StartUploadEvent(fileName: 'file0', fileId: '0'),
            StartUploadEvent(fileName: 'file1', fileId: '1'),
            StartUploadEvent(fileName: 'file2', fileId: '2'),
            StartUploadEvent(fileName: 'file3', fileId: '3'),
            StartUploadEvent(fileName: 'file4', fileId: '4'),
            StartUploadEvent(fileName: 'file5', fileId: '5'),
            StartUploadEvent(fileName: 'file6', fileId: '6'),
            FinishedUploadEvent(fileName: 'file0', fileId: '0'),
            FinishedUploadEvent(fileName: 'file1', fileId: '1'),
            FinishedUploadEvent(fileName: 'file2', fileId: '2'),
            FinishedUploadEvent(fileName: 'file3', fileId: '3'),
            FinishedUploadEvent(fileName: 'file4', fileId: '4'),
            FinishedUploadEvent(fileName: 'file5', fileId: '5'),
            UploadLimitExceededEvent(fileName: 'file6', fileId: '6'),
          ],
        ),
      );
    });
  });
}
