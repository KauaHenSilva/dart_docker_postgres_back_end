import 'package:dart_docker_postgres_back_end/app/api/api.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late AddClientesHandler clienteHandler;
  late AddClienteUseCase mockAddClientesUseCase;

  setUp(() {
    mockAddClientesUseCase = MockAddClientesUseCase();
    clienteHandler =
        AddClientesHandler(addClienesUserCase: mockAddClientesUseCase);
  });

  group('AddClienteHandler', () {
    test('deve retornar um status created', () async {
      final result = await clienteHandler.call(RequestParemets(
        body: {
          'id': 1,
          'nome': 'nome',
          'email': 'email',
          'imageCapaURL': 'imageCapaURL',
          'pix': 'pix',
        },
      ));
      expect(result.status, StatusHandler.created);
    });

    test('Deve retornar um ClienteOutputDTO', () async {
      final result = await clienteHandler.call(RequestParemets(
        body: {
          'id': 1,
          'nome': 'nome',
          'email': 'email',
          'imageCapaURL': 'imageCapaURL',
          'pix': 'pix',
        },
      ));

      expect(result.body, isA<ClienteOutputDTO>());
    });
  });
}
