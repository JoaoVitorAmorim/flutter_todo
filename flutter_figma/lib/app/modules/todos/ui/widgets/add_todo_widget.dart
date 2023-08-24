import 'package:flutter/material.dart';
import 'package:flutter_figma/app/modules/todos/ui/widgets/add_todo_figma_mock.dart';

class AddTodoWidget extends StatefulWidget {
  final void Function() onTap;
  const AddTodoWidget({
    super.key,
    required this.onTap,
  });

  @override
  State<AddTodoWidget> createState() => _AddTodoWidgetState();
}

class _AddTodoWidgetState extends State<AddTodoWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: const AddTodoFigmaMock(),
    );
  }
}
