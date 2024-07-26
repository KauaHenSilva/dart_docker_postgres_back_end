library infra;

import 'package:dart_docker_postgres_back_end/app/data/data.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:postgres/postgres.dart';

part 'dao/clientes/get_clientes_dao.dart';
part 'dao/clientes/get_cliente_by_email_dao.dart';

part 'connection/my_connection.dart';
part 'connection/fake/fake_db.dart';
part 'connection/postgres/postgress.dart';

class ClienteDB {
  ClienteDB._();
  
  static Cliente fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      imageCapaURL: map['image_capa_url'],
      pix: map['pix'],
    );
  }
}
