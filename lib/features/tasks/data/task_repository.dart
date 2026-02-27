import 'package:supabase_flutter/supabase_flutter.dart';
import 'task_model.dart';

class TaskRepository {
  final _client = Supabase.instance.client;

  // READ
  Future<List<TaskModel>> getTasks() async {
    final response = await _client
        .from('tasks')
        .select()
        .order('due_date', ascending: true);
    return (response as List).map((json) => TaskModel.fromJson(json)).toList();
  }

  // CREATE
  Future<void> createTask(TaskModel task) async {
    await _client.from('tasks').insert(task.toJson());
  }

  // UPDATE
  Future<void> updateTask(TaskModel task) async {
    await _client.from('tasks').update(task.toJson()).eq('id', task.id!);
  }

  // DELETE
  Future<void> deleteTask(String id) async {
    await _client.from('tasks').delete().eq('id', id);
  }
}