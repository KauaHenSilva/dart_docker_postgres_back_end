import 'package:dart_docker_postgres_back_end/app/data/data.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

class FakeCliente extends Fake implements Cliente {}

void main() {
  late AddClienteServices addClienteServices;
  late MockAddClienteGateway mockAddClienteGateway;
  late MockGetClienteByEmailGateway mockGetClienteByEmailGateway;

  setUpAll(() {
    mockAddClienteGateway = MockAddClienteGateway();
    mockGetClienteByEmailGateway = MockGetClienteByEmailGateway();

    addClienteServices = AddClienteServices(
      addClienteGateway: mockAddClienteGateway,
      getClienteByEmailGateway: mockGetClienteByEmailGateway,
    );

    registerFallbackValue(FakeCliente());
  });

  group('AddClienteServices', () {
    test('Deve adicionar um cliente', () async {
      when(() => mockAddClienteGateway.call(any())).thenAnswer((_) async => cliente);
      when(() => mockGetClienteByEmailGateway.call(any())).thenAnswer((_) async => null);
      
      final result = await addClienteServices(cliente);
      expect(result, isA<Cliente>());
    });

    test("deve retornar um erro de email já cadastrado", () async {
      when(() => mockAddClienteGateway.call(any())).thenAnswer((_) async => cliente);
      when(() => mockGetClienteByEmailGateway.call(any())).thenAnswer((_) async => cliente);

      expect(() => addClienteServices(cliente), throwsA(isA<ClienteEmailExistException>()));
    });
  });
}
