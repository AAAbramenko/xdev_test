import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xdev_test/utils/utils.dart';

void main() {
  // Последовательность выполнения задач
  // taskId Статус задачи
  // 0 X_________
  // 1 XXXX______
  // 2 XX________
  // 3 _XXX______
  // 4 __XXXX____
  // 5 ____X_____

  group('TaskManager', () {
    late TaskManager<int, int> taskManager;

    setUp(() {
      taskManager = TaskManager<int, int>(3)
        ..addTask(TestTask(taskId: 0, duration: 250))
        ..addTask(TestTask(taskId: 1, duration: 1000))
        ..addTask(TestTask(taskId: 2, duration: 500))
        ..addTask(TestTask(taskId: 3, duration: 750))
        ..addTask(TestTask(taskId: 4, duration: 1000))
        ..addTask(TestTask(taskId: 5, duration: 250));
    });

    test('tasks executing', () async {
      await expectLater(
        taskManager.tasksResults,
        emitsInOrder(const [
          TaskResult(taskId: 0, result: 0),
          TaskResult(taskId: 2, result: 2),
          TaskResult(taskId: 1, result: 1),
          TaskResult(taskId: 3, result: 3),
          TaskResult(taskId: 5, result: 5),
          TaskResult(taskId: 4, result: 4),
        ]),
      );
    });

    test('cancel task', () async {
      Future.delayed(const Duration(milliseconds: 250)).then((_) {
        taskManager
          ..cancelTask(1)
          ..cancelTask(4);
      });

      await expectLater(
        taskManager.tasksResults,
        emitsInOrder(const [
          TaskResult(taskId: 0, result: 0),
          TaskResult(taskId: 2, result: 2),
          TaskResult(taskId: 5, result: 5),
          TaskResult(taskId: 3, result: 3),
        ]),
      );
    });

    test('cancel all tasks', () async {
      Future.delayed(const Duration(milliseconds: 500)).then((_) {
        taskManager.cancelAll();
      });

      await expectLater(
        taskManager.tasksResults,
        emitsInOrder(const [
          TaskResult(taskId: 0, result: 0),
          TaskResult(taskId: 2, result: 2),
        ]),
      );
    });
  });
}

class TestTask extends Task<int, int> {
  TestTask({
    required int taskId,
    required this.duration,
  })  : _completer = Completer<int>(),
        super(taskId);

  final int duration;
  late final CancelableOperation<int> _operation;
  final Completer<int> _completer;

  @override
  void cancel() {
    _operation.cancel();
  }

  @override
  void start() {
    _operation = CancelableOperation.fromFuture(
      Future.delayed(
        Duration(milliseconds: duration),
        () => taskId,
      ),
    );
    _operation.then(_completer.complete);
  }

  @override
  Future<int> get result => _completer.future;
}
