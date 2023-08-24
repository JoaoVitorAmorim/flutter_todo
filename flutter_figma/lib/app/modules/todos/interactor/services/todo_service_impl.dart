import 'dart:math';

import 'package:flutter_figma/app/core/exceptions/app_exception.dart';
import 'package:flutter_figma/app/core/services/http_service.dart/interface/http_service.dart';
import 'package:flutter_figma/app/modules/todos/interactor/model/todo_model.dart';
import 'package:flutter_figma/app/modules/todos/interactor/state/todo_state.dart';

import 'interface/todo_service.dart';

class TodoServiceImpl implements TodoService {
  final HttpService _httpClient;

  TodoServiceImpl({required HttpService httpClient}) : _httpClient = httpClient;

  @override
  Future<TodoState> getTodos() async {
    try {
      final response = await _httpClient.get('/todos');

      final List<TodoModel> todos = [];

      int limit = 8;

      for (Map<String, dynamic> m in response.data) {
        limit--;
        todos.add(TodoModel.fromMap(m));
        if (limit == 0) {
          break;
        }
      }

      return TodoStateSucess(todos);
    } on AppException catch (error) {
      return TodoStateFailure(error);
    }
  }

  @override
  Future<TodoState> addTodo(todos) async {
    try {
      final response = await _httpClient.get('/todos');
      todos.add(TodoModel.fromMap(response.data[Random().nextInt(150)]));
      return TodoStateSucess(todos);
    } on AppException catch (error) {
      return TodoStateFailure(error);
    }
  }

  @override
  Future<TodoState> removeTodo(List<TodoModel> todos, int index) async {
    try {
      todos.removeAt(index);
      return TodoStateSucess(todos);
    } on AppException catch (error) {
      return TodoStateFailure(error);
    }
  }
}
