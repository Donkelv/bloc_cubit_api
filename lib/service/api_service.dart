import 'package:bloc_fetch_api/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response?> getPostData() async {
    try {
      final Response? response = await _dio.get("$baseUrl$posts");
      return response;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }
}
