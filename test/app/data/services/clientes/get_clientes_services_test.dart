import 'package:dart_docker_postgres_back_end/app/data/data.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockGetClientesGateway mockGetClientesGateway;
  late GetClientesServices getClientesServices;

  setUpAll(() {
    mockGetClientesGateway = MockGetClientesGateway();
    getClientesServices = GetClientesServices(getClientesGateway: mockGetClientesGateway);
  });

  group('GetClientesServices', () {
    test('Deve retornar uma lista de clientes', () async {
      when(() => mockGetClientesGateway.call()).thenAnswer((_) async => <Cliente>[]);
      final clientes = await getClientesServices.call();

      expect(clientes, isA<List<Cliente>>());
    });
  });
}
