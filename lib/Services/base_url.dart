import 'package:dio/dio.dart';

class DioBaseUrl{
  static Dio dio = Dio(BaseOptions(baseUrl: 'http://flutter.noviindus.co.in/api/'));
}