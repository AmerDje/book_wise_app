import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService(this.dio);
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response<dynamic> response = await dio.get('$_baseUrl$endPoint');
    Map<String, dynamic> data = response.data;
    return data;
  }
}
