import 'package:dart_docker_postgres_back_end/app/data/data.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

class FakeCliente extends Fake implements Cliente {}

void main() {
  late AddClienteServices addClienteServices;
  late MockAddClienteGateway mockAddClienteGateway;

  setUpAll(() {
    mockAddClienteGateway = MockAddClienteGateway();
    addClienteServices = AddClienteServices(addClienteGateway: mockAddClienteGateway);

    registerFallbackValue(FakeCliente());
  });

  group('AddClienteServices', () {
    test('Deve adicionar um cliente', () async {
      when(() => mockAddClienteGateway.call(any())).thenAnswer((_) async => cliente);
      final result = await addClienteServices(cliente);

      expect(result, isA<Cliente>());
    });
  });
}
