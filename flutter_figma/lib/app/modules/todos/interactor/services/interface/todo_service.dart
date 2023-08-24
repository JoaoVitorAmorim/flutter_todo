import 'package:flutter_figma/app/modules/todos/interactor/model/todo_model.dart';
import 'package:flutter_figma/app/modules/todos/interactor/state/todo_state.dart';

abstract interface class TodoService {
  Future<TodoState> getTodos();
  Future<TodoState> addTodo(List<TodoModel> todos);
  Future<TodoState> removeTodo(List<TodoModel> todos, int index);
}
