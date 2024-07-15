part of '../server.dart';

class ResponseJSON extends Response {
  ResponseJSON.ok(dynamic body)
      : super.ok(body is List
            ? jsonEncode(body.map((e) => e.toMap()).toList())
            : jsonEncode(body?.toMap()));
}
