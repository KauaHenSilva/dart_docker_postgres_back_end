part of '../server.dart';

class ShelfAdapter {
  final List<Controller> controllers;
  ShelfAdapter({required this.controllers});

  void handler(Router router) {
    for (final controler in controllers) {
      _handler(controler, router);
    }
  }

  void _handler(Controller controler, Router router) {
    final route = controler.route;
    final handlers = controler.handlers;

    for (final interHandlers in handlers.entries) {
      router.add(interHandlers.key, route, (Request request) async {
        final handler = await interHandlers.value();

        switch (handler.status) {
          case StatusHandler.ok:
            return Response.ok(handler.body);
          case StatusHandler.internalServerError:
            return Response.internalServerError();
          default:
            return Response.internalServerError();
        }
      });
    }
  }
}
