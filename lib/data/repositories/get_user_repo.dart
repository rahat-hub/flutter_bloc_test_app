
import 'package:dio/dio.dart';
import 'package:flutter_bloc_test_app/model/user_model.dart';

import '../services/api_service.dart';
import '../services/get_it_services.dart';

class GetUserRepo {
  final ApiService _apiServices = getIt.get<ApiService>();

  Future<List<UserModel>> loadAllUser() async {
    try {
      Response response = await _apiServices.getApi(
        url: 'https://dummyjson.com/users',
      );

      if(response.statusCode == 200) {
        List <dynamic> users = response.data['users'];
        List<UserModel> allUser = users.map((e)=> UserModel.formJson(e)).toList();
        return allUser;
      }
      throw 'User not Found';

    } catch (e) {
      rethrow;
    }
  }
}