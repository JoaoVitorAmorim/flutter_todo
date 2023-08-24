import 'package:flutter/material.dart';

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
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
