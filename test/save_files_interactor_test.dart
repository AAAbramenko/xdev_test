import 'package:flutter_test/flutter_test.dart';
import 'package:xdev_test/domain/domain.dart';

void main() {
  test('SaveFilesInteractor', () async {
    final SaveFilesInteractor interactor = SaveFilesInteractor();
    for (int i = 0; i < 3; i++) {
      await interactor.save();
    }

    expect(
      interactor.saveEvents.take(3),
      emitsInOrder(
        [
          const SaveFilesEvent(),
          const SaveFilesEvent(),
          const SaveFilesEvent(),
          emitsDone,
        ],
      ),
    );
  });
}
