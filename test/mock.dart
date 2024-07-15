import 'package:dart_docker_postgres_back_end/app/data/data.dart';
import 'package:dart_docker_postgres_back_end/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockGetClientesUserCase extends Mock implements GetClientesUseCase {}

class MockGetClientesGateway extends Mock implements GetClientesGateway {}
