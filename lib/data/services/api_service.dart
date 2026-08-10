
import 'package:dio/dio.dart';

class ApiService {

  final _dio = Dio();

  /// [GET]
  Future<Response> getApi({required String url}) async {
    try{
      Response response = await _dio.get(url);
      return response;
    } catch(e){
      return Future.error(e);
    }
  }

  /// [POST]
  Future<Response> postApi({required String url, dynamic data}) async {
    try{
      Response response = await _dio.post(url, data: data);
      return response;
    } catch(e){
      return Future.error(e);
    }
  }

}