import 'package:moor_flutter/moor_flutter.dart';

class CargaCursoCalendarioPeriodo extends Table
{
  IntColumn get cargaCursoCalendarioPeriodoId => integer()();
  IntColumn get cargaCursoId => integer().nullable()();
  IntColumn get calendarioPeriodoId => integer().nullable()();
  IntColumn get estadoId => integer().nullable()();
  IntColumn get fechaInicio => integer().nullable()();
  IntColumn get fechaFin => integer().nullable()();
  TextColumn get horaInicio => text().nullable()();
  TextColumn get horaFin => text().nullable()();
  IntColumn get calendarioPeriodoDetId => integer().nullable()();
  IntColumn get tipoId => integer().nullable()();
  IntColumn get planCursoId => integer().nullable()();
  IntColumn get anioAcademicoId => integer().nullable()();
  IntColumn get cargaAcademicaid => integer().nullable()();
  TextColumn get paths => text().nullable()();

  @override
  Set<Column> get primaryKey => {cargaCursoCalendarioPeriodoId};
}