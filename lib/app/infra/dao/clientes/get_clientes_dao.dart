part of '../../infra.dart';

class GetClientesDAO implements GetClientesGateway {
  final MyConnection connection;
  GetClientesDAO({required this.connection});

  @override
  Future<List<Cliente>> call() async {
    try {
      final rows = await connection.query('SELECT * FROM clientes');
      return rows.map(Cliente.fromMap).toList();
    } finally {
      await connection.close();
    }
  }
}
