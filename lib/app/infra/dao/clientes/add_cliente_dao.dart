part of '../../infra.dart';

class AddClienteDao implements AddClienteGateway {
  final MyConnection connection;

  AddClienteDao({required this.connection});

  @override
  Future<Cliente> call(Cliente cliente) async {
    try {
      final rows = await connection.query(
        'INSERT INTO clientes (nome, email, image_capa_url, pix) VALUES (@nome, @email, @image_capa_url, @pix) returning *',
        {
          'nome': cliente.nome,
          'email': cliente.email,
          'image_capa_url': cliente.imageCapaURL,
          'pix': cliente.pix,
        },
      );
      return rows.map(ClienteDB.fromMap).first;
    } finally {
      await connection.close();
    }
  }
}
