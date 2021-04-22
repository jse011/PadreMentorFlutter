import 'package:moor_flutter/moor_flutter.dart';
import 'package:ss_crmeducativo/src/data/helpers/serelizable/rest_api_response.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/anio_academico.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/aula.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/calendario_academico.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/calendario_periodo.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/calendario_periodo_detalle.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/carga_academica.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/carga_curso_calendario_periodo.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/carga_curso_docente.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/carga_curso_docente_det.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/carga_cursos.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/cursos.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/cursos_det_horario.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/detalle_horario.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/dia.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/empleado.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/entidad.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/georeferencia.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/hora.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/horario.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/horario_dia.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/horario_hora.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/horario_programa.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/nivel_academico.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/parametro_configuracion.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/parametros_disenio.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/periodos.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/persona.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/plan_cursos.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/plan_estudios.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/programas_educativo.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/rol.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/seccion.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/session_user.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/silabo_evento.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/tipos.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/usuario.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/usuario_rol_georeferencia.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/web_configs.dart';

part 'app_database.g.dart';

@UseMoor(tables:[SessionUser, UsuarioRolGeoreferencia, Rol, Georeferencia, Entidad, Persona, Empleado, AnioAcademico, ParametroConfiguracion, Aula, CargaAcademica,
  CargaCursoDocente, CargaCursoDocenteDet, CargaCurso, Cursos, ParametrosDisenio, NivelAcademico, Periodos, PlanCursos, PlanEstudio, ProgramasEducativo, Seccion, SilaboEvento,
  CalendarioPeriodo, CalendarioPeriodoDetalle, CargaCursoCalendarioPeriodo, Tipos, Hora, HorarioPrograma, HorarioHora, DetalleHorario, Dia, HorarioDia, CursosDetHorario, Horario,
  CalendarioAcademico, Usuario, WebConfigs])
class AppDataBase extends _$AppDataBase {
  @override
  int get schemaVersion => 1;

  static final AppDataBase _singleton = AppDataBase._internal();

  factory AppDataBase() {
    return _singleton;
  }

  AppDataBase._internal(): super(FlutterQueryExecutor.inDatabaseFolder(
      path: "db.sqlite", logStatements: true));

  SimpleSelectStatement<T, R> selectSingle<T extends Table, R extends DataClass>(TableInfo<T, R> table, {bool distinct = false}){
    var query = select(table, distinct: distinct);
    query.limit(1);
    return query;
  }

}

/*
* Moor integrates with Dart’s build system, so you can generate all the code needed with |.
* If you want to continuously rebuild the generated code where you change your code, run flutter packages pub run build_runner watch instead.
* After running either command once, the moor generator will have created a class for your database and data classes for your entities.
* To use it, change the MyDatabase class as follows:
* */

