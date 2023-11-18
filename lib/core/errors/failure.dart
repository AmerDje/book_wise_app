import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            'Connection timed out. Check your internet connection and try again.');

      case DioExceptionType.connectionError:
        return ServerFailure('Server connection error. Try again later.');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Sending data timed out. Try again.');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receiving data timed out. Try again.');

      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Bad certificate. Ensure the server certificate is valid.');

      case DioExceptionType.cancel:
        return ServerFailure('Connection canceled.');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(
              'No internet connection. Check your network settings.');
        }
        return ServerFailure('Unexpected error. Try again.');
      default:
        return ServerFailure('Oops! There was an error. Try again.');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure('Error: ${response['error']['message']}');
    } else if (statusCode == 404) {
      return ServerFailure('Request not found. Try again later.');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error. Try again later.');
    } else {
      return ServerFailure('Oops! There was an error. Try again.');
    }
  }
}
