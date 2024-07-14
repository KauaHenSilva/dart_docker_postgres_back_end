import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

class Server {
  static Future<HttpServer> bootStrap() async {
    final ip = InternetAddress.anyIPv4;

    final router = Router();
    final handler = Pipeline().addMiddleware(logRequests());
    final port = int.parse(Platform.environment['PORT'] ?? '8080');

    return await serve(handler.addHandler(router.call), ip, port);
  }
}
