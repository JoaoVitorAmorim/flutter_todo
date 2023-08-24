import 'package:dio/dio.dart';
import 'package:flutter_figma/app/core/services/http_service.dart/http_service_impl.dart';
import 'package:flutter_figma/app/core/services/http_service.dart/interface/http_service.dart';
import 'package:flutter_figma/app/modules/todos/controller/todo_controller.dart';
import 'package:flutter_figma/app/modules/todos/interactor/services/interface/todo_service.dart';
import 'package:flutter_figma/app/modules/todos/interactor/services/todo_service_impl.dart';
import 'package:get_it/get_it.dart';

import 'core/utils/singleton.dart';

var getIt = GetIt.instance;

Singleton setup() {
  getIt = GetIt.asNewInstance();

  getIt.registerSingleton<Dio>(
    Dio(),
  );

  getIt.registerSingleton<HttpService>(
    HttpServiceImpl(
      'https://jsonplaceholder.typicode.com',
      httpClient: getIt.get<Dio>(),
    ),
  );

  getIt.registerSingleton<TodoService>(
    TodoServiceImpl(
      httpClient: getIt.get<HttpService>(),
    ),
  );

  getIt.registerSingleton<TodoController>(
    TodoController(
      todoService: getIt.get<TodoService>(),
    ),
  );

  return singleton;
}
