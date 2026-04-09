import 'package:dio/dio.dart';
import '../../errors/exceptions.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String message;
    int? statusCode = err.response?.statusCode;
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        message = 'Connection timeout';
        throw NetworkException(message);
      case DioExceptionType.badResponse:
        final data = err.response?.data;
        message = data['message'] ?? data['error'] ?? 'Server error';
        throw ServerException(message, statusCode: statusCode);
      default:
        message = err.message ?? 'Unknown error';
        throw ServerException(message, statusCode: statusCode);
    }
  }
}
