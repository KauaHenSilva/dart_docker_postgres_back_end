import 'package:dart_docker_postgres_back_end/api/api.dart';
import 'package:test/test.dart';

void main() {
  group("ClientesHandlers", () {
    test('deve retornar uma instancia ResponseHandler', () async {
      final handler = GetClientesHandler();
      final response = await handler.call();

      expect(response, isA<ResponseHandler>());
    });

    test('Deve retorar um status ok', () async {
      final handler = GetClientesHandler();
      final response = await handler.call();

      expect(response.status, StatusHandler.ok);
    });

    test('Deve retornar uma lista de ClientesOutputTDO', () async {
      final handler = GetClientesHandler();
      final response = await handler.call();

      expect(response.body, isA<List<ClientesOutputDTO>>());
    });

  });
}


