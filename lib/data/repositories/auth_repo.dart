import 'package:dio/dio.dart';
import 'package:flutter_bloc_test_app/data/services/api_service.dart';

import '../services/get_it_services.dart';

class AuthRepo {
  final ApiService _apiServices = getIt.get<ApiService>();

  /// [LOGIN] --> Function to login the User
  Future<Response> loginUser({required String username, required String password}) async {
    try {
      Response response = await _apiServices.postApi(
        url: 'https://dummyjson.com/auth/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      return response;

    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }
}