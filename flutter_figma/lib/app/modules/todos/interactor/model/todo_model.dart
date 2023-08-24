import 'package:flutter_figma/app/core/types/types.dart';
import 'package:flutter_figma/app/core/utils/singleton.dart';

class TodoModel {
  final String title;
  bool isSelected;

  TodoModel({required this.title, required this.isSelected});

  Singleton toogleSelected() {
    isSelected = !isSelected;
    return singleton;
  }

  factory TodoModel.fromMap(Json map) {
    return TodoModel(title: map['title'], isSelected: map['completed']);
  }
}
