part of '../../infra.dart';

class GetClienteByEmailDAO implements GetClienteByEmailGateway {
  final MyConnection connection;
  GetClienteByEmailDAO({required this.connection});

  @override
  Future<Cliente?> call(String email) async {
    try {
      final rows = await connection.query('SELECT * FROM clientes WHERE email = @email', {'email': email});

      if (rows == null) return null;
      return rows.map(ClienteDB.fromMap).first;

    } finally {
      await connection.close();
    }
  }
}
