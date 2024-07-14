import 'package:dart_docker_postgres_back_end/server/server.dart';

void main() {
  Server.bootStrap()
      .then((server) => print('Server running on port ${server.port}'))
      .catchError((error) => print('Error starting server: $error'));
}
