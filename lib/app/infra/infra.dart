library infra;

import 'package:dart_docker_postgres_back_end/app/data/data.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:postgres/postgres.dart';

part 'dao/clientes/get_clientes_dao.dart';
part 'connection/my_connection.dart';
part 'connection/fake/fake_db.dart';
part 'connection/postgres/postgress.dart';