part of '../api.dart';

abstract class Controller {
  final String route;
  final Map<String, Handlers> handlers;

  Controller({
    required this.route,
    required this.handlers,
  });
}
