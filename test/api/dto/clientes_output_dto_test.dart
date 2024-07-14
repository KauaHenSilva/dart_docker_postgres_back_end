import 'package:dart_docker_postgres_back_end/api/api.dart';
import 'package:dart_docker_postgres_back_end/domain/domain.dart';
import 'package:test/test.dart';

void main() {
  group('ClientesOutputDTO', () {

    test('deve retonar uma lista de ClientesOutputDTO', () async {
      final result = ClientesOutputDTO.toCollectionDTO(
        [Cliente(id: 1, nome: 'nome', email: 'email', telefone: 'telefone')],
      );

      expect(result, isA<List<ClientesOutputDTO>>());
    });
  });
}
