import 'package:flutter_figma/app/core/exceptions/app_exception.dart';
import 'package:flutter_figma/app/modules/todos/interactor/model/todo_model.dart';

sealed class TodoState {}

class TodoStateLoading implements TodoState {}

class TodoStateSucess implements TodoState {
  final List<TodoModel> todos;

  const TodoStateSucess(this.todos);
}

class TodoStateFailure implements TodoState {
  final AppException todoException;

  const TodoStateFailure(this.todoException);
}
