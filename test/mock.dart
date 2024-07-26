import 'package:dart_docker_postgres_back_end/app/data/data.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:dart_docker_postgres_back_end/app/infra/infra.dart';
import 'package:mocktail/mocktail.dart';

class MockGetClientesUseCase extends Mock implements GetClientesUseCase {}
class MockGetClientesGateway extends Mock implements GetClientesGateway {}

class MockAddClientesUseCase extends Mock implements AddClienteUseCase {}
class MockAddClienteGateway extends Mock implements AddClienteGateway {}

class MockConnection extends Mock implements MyConnection {}

final Cliente cliente = Cliente(
  id: 1,
  nome: 'nome',
  email: 'email',
  imageCapaURL: 'imageCapaURL',
  pix: 'pix',
);
