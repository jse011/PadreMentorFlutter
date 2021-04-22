import 'package:moor_flutter/moor_flutter.dart';

class CalendarioPeriodoDetalle extends Table
{
  IntColumn get calendarioPeriodoDetId => integer()();
  IntColumn get calendarioPeriodoId => integer().nullable()();
  TextColumn get descripcion => text().nullable()();
  IntColumn get fechaInicio => integer().nullable()();
  IntColumn get fechaFin => integer().nullable()();
  IntColumn get diasPlazo => integer().nullable()();
  IntColumn get tipoId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {calendarioPeriodoDetId};
}