import 'dart:async';

import 'package:app_land/services/app_constants.dart';
import 'package:dio/dio.dart';

import '../app.dart';

class Client {
  static Dio? _dio;

  Dio get client {
    if (_dio != null) {
      return _dio!;
    } else {
      _dio = _initClient();
      return _dio!;
    }
  }

  Dio _initClient() => Dio()
    ..options.baseUrl = App.appEnvironment == AppEnvironment.develop
        // ? 'https://friday.hlo.app/api/v1'
        ? "http://localhost:3000/api/v1"
        : App.appEnvironment == AppEnvironment.uat
            ? 'https://uat-api.friday.in.th/api/v1'
            : 'https://api.friday.in.th/api/v1'
    ..options.connectTimeout = 15000
    ..options.receiveTimeout = 15000;
}
