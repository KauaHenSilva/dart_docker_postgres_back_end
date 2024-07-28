part of '../../domain.dart';

class Cliente {
  final int id;
  final String nome;
  final String email;
  final String imageCapaURL;
  final String pix;

  Cliente({
    required this.id,
    required this.nome,
    required this.email,
    required this.imageCapaURL,
    required this.pix,
  });
}
