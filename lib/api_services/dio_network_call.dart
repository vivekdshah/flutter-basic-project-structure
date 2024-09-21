import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class ApiManager {
  static final ApiManager _instance = ApiManager._internal();

  factory ApiManager() => _instance;

  ApiManager._internal();

  static final Dio _dio = Dio();


  static Future<DioResponseAPI> get({
    required String methodName,
  }) async {
    try {
      await _checkConnectivity();
      String url =  methodName;
      var logger = Logger(
        level: Level.info,
        printer: PrettyPrinter(methodCount: 0, noBoxingByDefault: false),
      );
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
}

class ApiError {
  final int code;
  final String message;
  final dynamic details;

  ApiError(this.code, this.message, {this.details});
}

class DioResponseAPI {
  final int code;
  final Map<String, dynamic> data;
  bool? isError;
  ApiError? error;

  DioResponseAPI(this.code, this.data, {this.isError, this.error});
}
