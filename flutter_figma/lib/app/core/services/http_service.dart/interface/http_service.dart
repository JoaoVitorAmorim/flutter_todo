import 'package:flutter_figma/app/core/services/http_service.dart/http_response.dart';

abstract interface class HttpService {
  Future<HttpResponse> get(String path);
}
