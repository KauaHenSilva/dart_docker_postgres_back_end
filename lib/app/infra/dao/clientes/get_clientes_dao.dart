part of '../../infra.dart';

class GetClientesDAO implements GetClientesGateway {
  final MyConnection connection;
  GetClientesDAO({required this.connection});

  @override
  Future<List<Cliente>> call() async {
    try {
      final rows = await connection.query('SELECT * FROM clientes');

      if (rows == null) return <Cliente>[];
      return rows.map(ClienteDB.fromMap).toList();
    } finally {
      await connection.close();
    }
  }
}
