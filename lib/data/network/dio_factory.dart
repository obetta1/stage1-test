
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../config/api_constant.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";

class DioFactory {


  DioFactory();

  Future<Dio> getDio() async {
    Dio dio = Dio();
    int _timeOut = 60 * 1000; // 1 min
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      DEFAULT_LANGUAGE: "en"
    };

    dio.options = BaseOptions(
        baseUrl: Constant.APP_API,
        connectTimeout: Duration(minutes: _timeOut),
        receiveTimeout: Duration(minutes: _timeOut),
        headers: headers);

    ///this is used to log the http response only when it is on development mode
    if (kReleaseMode) {
      debugPrint("release mode no logs");
    } else {
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true, requestBody: true, responseHeader: true));
    }

    return dio;
  }
}