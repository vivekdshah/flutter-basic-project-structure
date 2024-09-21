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
