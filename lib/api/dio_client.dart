import 'package:dio/dio.dart';
import 'package:ecommerece_assignment_project/api/api_urls.dart';
import 'package:ecommerece_assignment_project/constants/common_constants.dart';

// Dio Client
class DioClient {
  static Dio? dio;

  static Dio getDioClient() {
    if (dio == null) {
      dio = Dio();
      dio!.options.baseUrl = ApiUrls.BASE_URL;
      dio!.options.connectTimeout =
          CommonConstants.CONNECTION_TIME_OUT_IN_MILI_SECONDS;
      dio!.options.receiveTimeout =
          CommonConstants.RECEIVE_TIME_OUT_IN_MILI_SECONDS;
    }
    return dio!;
  }
}
