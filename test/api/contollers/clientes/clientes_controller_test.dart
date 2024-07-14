import 'package:dart_docker_postgres_back_end/app/api/api.dart';
import 'package:test/test.dart';

import '../../../mock.dart';

/// Route /clientes
/// GET: Listar todos os clientes
/// POST: Adicionar um novo cliente

void main() {
  late ClientesController clientesController;
  late MockGetClientesUserCase getClientesUseCase;

  setUp(() {
    getClientesUseCase = MockGetClientesUserCase();
    clientesController = ClientesController(getClientesUseCase: getClientesUseCase);
  });

  group('ClientesController', () {
    test('clienteControler deve conter uma rota /clientes', () async {
      expect(clientesController.route, '/clientes');
    });

    test(
        "clienteControler deve conter um metodo 'GET' para o handler GetClientesHandler",
        () async {
      expect(clientesController.handlers['GET'], isA<GetClientesHandler>());
    });
  });
}
