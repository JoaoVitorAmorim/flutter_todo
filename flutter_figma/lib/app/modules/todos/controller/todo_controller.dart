import 'package:flutter/material.dart';
import 'package:flutter_figma/app/core/utils/singleton.dart';
import 'package:flutter_figma/app/modules/todos/interactor/state/todo_state.dart';
import 'package:flutter_figma/app/modules/todos/interactor/services/interface/todo_service.dart';

class TodoController extends ValueNotifier<TodoState> {
  final TodoService todoService;

  TodoController({
    required this.todoService,
  }) : super(
          TodoStateLoading(),
        );

  Future<Singleton> loadTodos() async {
    final todoState = await todoService.getTodos();
    await Future.delayed(const Duration(seconds: 3));
    value = todoState;
    return singleton;
  }

  Future<Singleton> addTodo(todos) async {
    final todoState = await todoService.addTodo(
      todos,
    );
    value = todoState;
    return singleton;
  }

  Future<Singleton> removeTodo(todos, index) async {
    final todoState = await todoService.removeTodo(todos, index);
    value = todoState;
    return singleton;
  }
}
