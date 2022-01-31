import 'dart:async';
import 'dart:collection';

import 'package:equatable/equatable.dart';

/// Менеджер управления задачами.
/// [ID] - тип идентификатора задачи, [V] - тип для [Future], возвращаемого задачей.
///
/// В идеале [Queue] можно было бы заменить на коллекцию со сложностью O(1).
/// Исходим из того, что максимальное количество файлов - 30, число не большое,
/// учитывая, что поиск среди задач требуется только при удалении задачи из очереди.
/// Функция удаления выполняется редко.
class TaskManager<ID, V> {
  TaskManager(this.currentMax)
      : _controller = StreamController<TaskResult<ID, V>>(),
        _running = [],
        _waiting = Queue<Task<ID, V>>();

  final StreamController<TaskResult<ID, V>> _controller;

  /// Очередь задач на выполнение.
  final Queue<Task<ID, V>> _waiting;

  /// Текущие задачи.
  final List<Task<ID, V>> _running;

  /// Максимальное количество одновременно выполняемых задач.
  final int currentMax;

  /// Добавить задачу в очередь на выполнение.
  /// Нет проверки на совпадение [Task.taskId].
  void addTask(Task<ID, V> task) {
    task.result.then((V result) {
      _controller.add(TaskResult(
        taskId: task.taskId,
        result: result,
      ));
      _running.remove(task);
      _takeAndStart();
    });

    if (_running.length == currentMax) {
      _waiting.addLast(task);
    } else {
      _running.add(task);
      task.start();
    }
  }

  /// Отменить конкретную задачу.
  void cancelTask(ID taskId) {
    try {
      // Поиск среди выполняемых
      final Task<ID, V> task = _running.firstWhere((Task<ID, V> task) {
        return task.taskId == taskId;
      });
      task.cancel();
      _running.remove(task);
      _takeAndStart();
    } on StateError {
      // Поиск среди очереди на выполнение
      _waiting.removeWhere((Task<ID, V> task) {
        return task.taskId == taskId;
      });
    }
  }

  /// Поток результатов, возвращаемых задачами.
  Stream<TaskResult<ID, V>> get tasksResults => _controller.stream;

  /// Забирает задачу из очереди на выполнение и запускает.
  void _takeAndStart() {
    if (_waiting.isNotEmpty) {
      final Task<ID, V> task = _waiting.removeFirst();
      _running.add(task);
      task.start();
    }
  }

  /// Отменить все задачи.
  void cancelAll() {
    for (Task<ID, V> item in _running) {
      item.cancel();
    }
    _running.clear();
    _waiting.clear();
  }
}

/// Результат задачи
class TaskResult<ID, V> extends Equatable {
  const TaskResult({
    required this.taskId,
    required this.result,
  });

  @override
  List<Object> get props => [taskId, result].cast<Object>();

  /// Идентификатор.
  final ID taskId;

  /// Непосредственно результат.
  final V result;
}

/// Класс задачи.
abstract class Task<ID, V> {
  Task(this.taskId);

  /// Идентификатор задачи
  final ID taskId;

  /// Отменить задачу
  void cancel();

  /// Запустить задачу
  void start();

  /// Результат задачи.
  Future<V> get result;
}
