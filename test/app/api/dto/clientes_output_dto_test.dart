import 'package:dart_docker_postgres_back_end/app/api/api.dart';
import 'package:test/test.dart';

import '../../../mock.dart';

void main() {
  group('ClientesOutputDTO', () {
    test('deve retonar uma lista de ClientesOutputDTO', () async {
      final result = ClienteOutputDTO.toCollectionDTO(
        [cliente],
      );

      expect(result, isA<List<ClienteOutputDTO>>());
    });
  });
}
