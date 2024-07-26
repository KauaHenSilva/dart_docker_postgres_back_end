part of '../api.dart';

enum StatusHandler {
  ok,
  created,
  internalServerError,
}

class RequestParemets {
  final Map<String, dynamic>? body;

  RequestParemets({this.body});
}

class ResponseHandler<T> {
  final StatusHandler status;
  final T? body;

  ResponseHandler({
    required this.status,
    this.body,
  });
}

abstract class Handlers {
  Future<ResponseHandler> call(RequestParemets body);
}
