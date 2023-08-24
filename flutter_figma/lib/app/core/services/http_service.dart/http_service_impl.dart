import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_figma/app/core/services/http_service.dart/http_exception.dart';
import 'package:flutter_figma/app/core/services/http_service.dart/http_response.dart';
import 'package:flutter_figma/app/core/services/http_service.dart/interface/http_service.dart';

class HttpServiceImpl implements HttpService {
  final String baseUrl;
  late final Dio _httpClient;

  HttpServiceImpl(
    this.baseUrl, {
    required Dio httpClient,
  }) : _httpClient = httpClient;

  @override
  Future<HttpResponse> get(String path) async {
    try {
      if (path.isEmpty) {
        throw const HttpException(
          'Path not informed',
          stackTrace: null,
        );
      }

      final response = await _httpClient.get(
        baseUrl + path,
      );

      return HttpResponse(
        data: response.data,
        dataAsBytes: utf8.encode(
          json.encode(response.data),
        ),
      );
    } on DioException catch (error, stackTrace) {
      throw HttpException(
        error.message ?? 'Error fatching the API',
        stackTrace: stackTrace,
      );
    }
  }
}
