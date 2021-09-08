import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RestClient {
  static String? baseUrl = dotenv.env['BASE_URL'];
  static String? unsplashKey = dotenv.env['CLIENT_ID'];
  static String contentType = "application/json; charset=utf-8";
  static int connectionTimeOut = 5000;
  static int receiveTimeOut = 1000;

  BaseOptions get options {
    return new BaseOptions(
      baseUrl: baseUrl!,
      contentType: contentType,
      connectTimeout: connectionTimeOut,
      receiveTimeout: receiveTimeOut,
      queryParameters: {
        'client_id': unsplashKey,
      },
    );
  }
}

RestClient restClient = RestClient();
