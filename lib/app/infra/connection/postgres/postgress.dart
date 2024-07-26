part of '../../infra.dart';

class PostgreSQL implements MyConnection {
  late Connection? _connection;

  @override
  Future<void> close() async {
    await _connection?.close();
  }

  @override
  Future<List<Map<String, dynamic>>> query(
    String query, [
    Map<String, dynamic> params = const {},
  ]) async {
    _connection = await Connection.open(
      Endpoint(
        host: 'localhost',
        database: 'postgres',
        username: 'postgres',
        password: 'docker',
        port: 5432,
      ),
      settings: ConnectionSettings(
        sslMode: SslMode.disable,
      ),
    );

    List<Map<String, dynamic>> map = [];

    final rows = await _connection!.execute(Sql.named(query), parameters: params);

    for (final row in rows) {
      map.add(row.toColumnMap());
    }

    return map;
  }
}
