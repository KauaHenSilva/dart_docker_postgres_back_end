part of '../../domain.dart';

class Cliente {
  final int id;
  final String nome;
  final String email;
  final String telefone;

  Cliente({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
  });

  static Cliente fromMap(Map<String, dynamic> row) {
    return Cliente(
      id: row['id'],
      nome: row['nome'],
      email: row['email'],
      telefone: row['telefone'],
    );
  }
}