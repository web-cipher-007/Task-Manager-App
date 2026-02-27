import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../tasks/data/task_repository.dart';
import '../../../tasks/data/task_model.dart';

final taskRepositoryProvider = Provider((ref) => TaskRepository());

final tasksProvider = AsyncNotifierProvider<TasksNotifier, List<TaskModel>>(() {
  return TasksNotifier();
});

class TasksNotifier extends AsyncNotifier<List<TaskModel>> {
  
  @override
  Future<List<TaskModel>> build() async {
    return ref.read(taskRepositoryProvider).getTasks();
  }

  Future<void> refreshTasks() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(taskRepositoryProvider).getTasks());
  }

  Future<void> deleteTask(String id) async {
    await ref.read(taskRepositoryProvider).deleteTask(id);
    ref.invalidateSelf();
  }
}