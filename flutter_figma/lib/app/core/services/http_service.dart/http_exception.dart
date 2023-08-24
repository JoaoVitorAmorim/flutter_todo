import 'package:flutter_figma/app/core/exceptions/app_exception.dart';

class HttpException implements AppException {
  @override
  final String message;

  @override
  final StackTrace? stackTrace;

  const HttpException(
    this.message, {
    required this.stackTrace,
  });
}
