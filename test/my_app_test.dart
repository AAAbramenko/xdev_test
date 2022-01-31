import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xdev_test/domain/domain.dart';
import 'package:xdev_test/presentation/presentation.dart';

import 'fake_local_gateway.dart';
import 'mock_remote_storage.dart';

void main() {
  late MyApp app;

  setUp(() {
    app = MyApp(
      uploadInteractor: UploadFileInteractor(
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
      ),
      saveInteractor: SaveFilesInteractor(),
    );
  });

  group('App test', () {
    testWidgets('App test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(app);

        final Finder clickableFinder = find.byKey(ClickableElement.elementKey);
        final Finder resetButtonFinder = find.byKey(ResetButton.buttonKey);
        final Finder saveButtonFinder = find.byKey(SaveButton.buttonKey);

        final Finder finder = find.text('Нет файлов');
        expect(finder, findsOneWidget);

        expect(tester.widget<TextButton>(saveButtonFinder).enabled, isFalse);
        expect(tester.widget<TextButton>(resetButtonFinder).enabled, isFalse);

        // Click and open files loading pages
        await tester.tap(clickableFinder);
        await tester.pumpAndSettle(const Duration(seconds: 2));

        final Finder addFileFinder = find.byKey(AddFileButton.buttonKey);

        for (int i = 0; i < 5; i++) {
          await tester.tap(addFileFinder);

          final Finder finder = find.text('file$i');
          await tester.pump();

          expect(finder, findsOneWidget);
        }
      });
    });
  });
}
