import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../models/dio_api_model.dart';
import 'app_constant.dart';

class ApiManager {
  static final ApiManager _instance = ApiManager._internal();

  factory ApiManager() => _instance;

  ApiManager._internal();

  static var logger = Logger(
    level: Level.info,
    printer: PrettyPrinter(methodCount: 0, noBoxingByDefault: false),
  );
  static final Dio _dio = Dio();

  static Future<DioResponseAPI> post({
    required String methodName,
    required Map<String, dynamic> params,
  }) async {
    try {
      await _checkConnectivity();
      String url = ApiConstant.baseUrl + methodName;
      Options options = _header();
      logger.i("==request== $url");
      logger.i("==params== $params");
      Response response = await _dio.post(url, data: params, options: options);

      return DioResponseAPI(response.statusCode ?? 0, response.data);
    } catch (error) {
      return _handleError(error);
    }
  }

  static Future<DioResponseAPI> get({
    required String methodName,
  }) async {
    try {
      await _checkConnectivity();
      String url = ApiConstant.baseUrl + methodName;
      logger.i("==Url== ${url}");
      Response response = await _dio.get(
        url,
      );
      logger.i("==response== ${response.data}");
      return DioResponseAPI(response.statusCode ?? 0, response.data);
    } catch (error) {
      return _handleError(error);
    }
  }

  static Future<void> _checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.mobile) && connectivityResult.contains(ConnectivityResult.wifi)) {
      throw ApiError(1, "No internet");
    }
  }

  static DioResponseAPI _handleError(dynamic error) {
    var logger = Logger(
      level: Level.error,
    );
    logger.e("Error== $error");
    return DioResponseAPI(0, {"error": error}, isError: true, error: ApiError(0, error.toString()));
  }

  static Options _header() {
    Map<String, dynamic> map = {'Content-Type': 'application/json'};
    return Options(
      headers: map,
    );
  }
}

