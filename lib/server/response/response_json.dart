part of '../server.dart';

class ResponseJSON extends Response {
  ResponseJSON.ok(dynamic body)
      : super.ok(body is List
            ? jsonEncode(body.map((e) => e.toMap()).toList())
            : jsonEncode(body?.toMap()));

  ResponseJSON.created(dynamic body)
      : super(201, body: jsonEncode(body.toMap()));

  ResponseJSON.internalServerError(dynamic body)
      : super(500, body: jsonEncode(body.toMap()));
}
