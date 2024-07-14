part of '../api.dart';

enum StatusHandler {
  ok,
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
  Future<ResponseHandler> call();
}
