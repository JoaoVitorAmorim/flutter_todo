//pq AppException e uma interface abstrata??

abstract interface class AppException implements Exception {
  abstract final String message;
  abstract final StackTrace? stackTrace;

  @override
  String toString() {
    return message;
  }
}
