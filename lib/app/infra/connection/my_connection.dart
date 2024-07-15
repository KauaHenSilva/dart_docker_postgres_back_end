part of '../infra.dart';

abstract class MyConnection {
  Future<List<Map<String, dynamic>>> query(
    String query, [
    Map<String, dynamic> params = const {},
  ]);
  Future<void> close();
}
