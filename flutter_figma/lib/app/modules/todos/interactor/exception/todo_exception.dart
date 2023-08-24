import 'package:flutter_figma/app/core/exceptions/app_exception.dart';

class TodoException implements AppException {
  @override
  final String message;

  @override
  final StackTrace? stackTrace;

  const TodoException(
    this.message, {
    this.stackTrace,
  });
}
