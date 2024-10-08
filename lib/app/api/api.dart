library api;

import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';

part 'contollers/controller.dart';
part 'contollers/clientes/clientes_controller.dart';

part 'handlers/handlers.dart';
part 'handlers/clientes/get_clientes_handler.dart';
part 'handlers/clientes/add_clientes_handler.dart';

part 'dto/cliente_output_dto.dart';
part 'dto/cliente_input_dto.dart';

part 'message/mensage_error.dart';