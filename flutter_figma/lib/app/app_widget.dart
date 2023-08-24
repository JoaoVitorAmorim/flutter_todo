import 'package:flutter/material.dart';
import 'package:flutter_figma/app/di.dart';
import 'package:flutter_figma/app/modules/todos/controller/todo_controller.dart';
import 'package:flutter_figma/app/modules/todos/ui/pages/todo_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return TodoPage(todoController: getIt.get<TodoController>());
        }
      },
    );
  }
}
