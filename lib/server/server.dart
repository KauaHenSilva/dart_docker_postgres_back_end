library server;

import 'dart:io';

import 'package:dart_docker_postgres_back_end/app/api/api.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

part 'adapter/shelf_adapter.dart';

class Server {
  static Future<HttpServer> bootStrap(List<Controller> controllers) async {
    final ip = InternetAddress.anyIPv4;

    final router = Router();
    ShelfAdapter(controllers: controllers).handler(router);

    final handler = Pipeline().addMiddleware(logRequests());
    final port = int.parse(Platform.environment['PORT'] ?? '8080');

    return await serve(handler.addHandler(router.call), ip, port);
  }
}
