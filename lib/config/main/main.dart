part of '../config.dart';

final connection = PostgreSQL();

final controllers = <Controller>[
  ClientesController(
    addClientesUseCase: AddClienteServices(
      getClienteByEmailGateway: GetClienteByEmailDAO(connection: connection),
      addClienteGateway: AddClienteDao(connection: connection),
    ),
    getClientesUseCase: GetClientesServices(
      getClientesGateway: GetClientesDAO(connection: connection),
    ),
  )
];
