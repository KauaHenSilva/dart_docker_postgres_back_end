part of '../infra.dart';

abstract class Connection {
  Future<List<Map<String, dynamic>>> query(String query);
  Future<void> close();
}
