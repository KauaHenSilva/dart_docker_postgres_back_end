import 'dart:async';

import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:dart_docker_postgres_back_end/app/infra/infra.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late GetClienteByEmailDAO getClienteByEmailDAO;
  late MockConnection connection;

  setUpAll(() {
    connection = MockConnection();
    getClienteByEmailDAO = GetClienteByEmailDAO(connection: connection);
  });

  setUp(() {
    when(() => connection.close()).thenAnswer((_) async => Completer<void>().complete());
  });

  group('GetClienteByEmailDaoTest', () {

    test('Deve retornar um cliente', () async {
      when(() => connection.query(any(), any())).thenAnswer((_) async => [
            {
              'id': 1,
              'nome': 'nome',
              'email': 'email',
              'image_capa_url': 'imageCapaURL',
              'pix': 'pix',
            }
          ]);

      final cliente = await getClienteByEmailDAO('email');
      expect(cliente, isA<Cliente>());
    });

    test('Deve retornar NULL', () async {
      when(() => connection.query(any(), any())).thenAnswer((_) async => []);

      final cliente = await getClienteByEmailDAO('email');
      expect(cliente, isNull);
    });
  });
}
