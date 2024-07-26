import 'dart:async';

import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:dart_docker_postgres_back_end/app/infra/infra.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockConnection mockConnection;
  late GetClientesDAO getClientesDao;

  setUpAll(() {
    mockConnection = MockConnection();
    getClientesDao = GetClientesDAO(connection: mockConnection);
  });

  setUp(() {
    when(() => mockConnection.close()).thenAnswer((_) async => Completer<void>().complete());
  });

  group('GetClientesDao', () {
    test('Deve retonar uma lista de clientes', () async {
      when(() => mockConnection.query(any())).thenAnswer(
        (_) async => <Map<String, dynamic>>[
          {
            'id': 1,
            'nome': 'nome',
            'email': 'email',
            'image_capa_url': 'image_capa_url',
            'pix': 'pix',
          },
        ],
      );

      final result = await getClientesDao();
      expect(result, isA<List<Cliente>>());
    });
  });
}
