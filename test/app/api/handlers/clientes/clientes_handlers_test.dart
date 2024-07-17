import 'package:dart_docker_postgres_back_end/app/api/api.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late GetClientesHandler handler;
  late MockGetClientesUseCase mockGetClientesUserCase;

  setUpAll(() {
    mockGetClientesUserCase = MockGetClientesUseCase();
    handler = GetClientesHandler(getClientesUseCase: mockGetClientesUserCase);
  });

  group("ClientesHandlers", () {
    test('deve retornar uma instancia ResponseHandler', () async {
      when(() => mockGetClientesUserCase.call()).thenAnswer((_) async => []);
      final response = await handler.call();

      expect(response, isA<ResponseHandler>());
    });

    test('Deve retorar um status ok', () async {
      when(() => mockGetClientesUserCase.call()).thenAnswer((_) async => []);
      final response = await handler.call();

      expect(response.status, StatusHandler.ok);
    });

    test('Deve retornar uma lista de ClientesOutputTDO', () async {
      when(() => mockGetClientesUserCase.call()).thenAnswer((_) async =>
          [Cliente(id: 1, nome: 'nome', email: 'email', telefone: 'telefone')]);
      final response = await handler.call();

      expect(response.body, isA<List<ClientesOutputDTO>>());
    });

    test("Deve retornar um status internalServerError", () async {
      when(() => mockGetClientesUserCase.call()).thenThrow(Exception());
      final response = await handler.call();

      expect(response.status, StatusHandler.internalServerError);
    });
  });
}
