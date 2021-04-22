import 'package:moor_flutter/moor_flutter.dart';
import 'package:ss_crmeducativo/src/data/helpers/serelizable/rest_api_response.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/tools/serializable_convert.dart';
import 'package:ss_crmeducativo/src/domain/entities/login_ui.dart';
import 'package:ss_crmeducativo/src/domain/entities/usuario_ui.dart';
import 'package:ss_crmeducativo/src/domain/repositories/configuracion_repository.dart';
import 'package:ss_crmeducativo/src/domain/tools/app_tools.dart';

import 'database/app_database.dart';

class MoorConfiguracionRepository extends ConfiguracionRepository{
  @override
  Future<bool> validarUsuario() async{
    AppDataBase SQL = AppDataBase();
    try{

      SessionUserData sessionUserData = await (SQL.select(SQL.sessionUser)).getSingle();//El ORM genera error si hay dos registros
      //Solo deve haber una registro de session user data
      print("validarUsuario: "+sessionUserData.complete.toString());
      return sessionUserData!=null&&sessionUserData.complete;
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> destroyBaseDatos() async{
    AppDataBase SQL = AppDataBase();
    try{
      await SQL.transaction(() async {
        // you only need this if you've manually enabled foreign keys
        // await customStatement('PRAGMA foreign_keys = OFF');
        for (final table in SQL.allTables) {
          await SQL.delete(table).go();
        }

        for (final table in SQL.allTables) {
          await SQL.delete(table).go();
        }
      });
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<int> getSessionUsuarioId() async{
    AppDataBase SQL = AppDataBase();
    try{
      SessionUserData sessionUserData =  await SQL.selectSingle(SQL.sessionUser).getSingle();
      return sessionUserData?.userId??0;
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<String> getSessionUsuarioUrlServidor() async{
    AppDataBase SQL = AppDataBase();
    try{
      SessionUserData sessionUserData =  await SQL.selectSingle(SQL.sessionUser).getSingle();
      return sessionUserData?.urlServerLocal??"";
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<UsuarioUi> saveDatosIniciales(Map<String, dynamic> datosInicioPadre) async{
    AppDataBase SQL = AppDataBase();
    try{
      int anioAcademicoId = 0;
      int  empleadoId = 0;
       await SQL.batch((batch) async {
        // functions in a batch don't have to be awaited - just
        // await the whole batch afterwards.

        print("saveDatosGlobales");

        if(datosInicioPadre.containsKey("anioAcademicoId")){
            anioAcademicoId = datosInicioPadre["anioAcademicoId"];
        }

        if(datosInicioPadre.containsKey("empleados")){
          List<EmpleadoData> empleadoDataList = SerializableConvert.converListSerializeEmpleado(datosInicioPadre["empleados"]);
          if(empleadoDataList.isNotEmpty){
            empleadoId = empleadoDataList[0].empleadoId;
          }
          batch.deleteWhere(SQL.empleado, (row) => const Constant(true));
          batch.insertAll(SQL.empleado, empleadoDataList, mode: InsertMode.insertOrReplace );
        }

        if(datosInicioPadre.containsKey("anioAcademicos")){
          List<AnioAcademicoData> anioAcademicoLast = await SQL.select(SQL.anioAcademico).get();
          print("AnioAcademico Last: " + anioAcademicoLast.length.toString());
          // Recuperar si el anio estubo seleccionado
          List<AnioAcademicoData> anioAcademicoList = [];
          for(AnioAcademicoData academicoData in SerializableConvert.converListSerializeAnioAcademico(datosInicioPadre["anioAcademicos"])){
              AnioAcademicoData last = anioAcademicoLast.firstWhere((element) => academicoData.idAnioAcademico == element.idAnioAcademico, orElse:() => null);
              if(last!=null){
                anioAcademicoList.add(academicoData.copyWith(toogle: last.toogle));
              }else{
                anioAcademicoList.add(academicoData);
              }

          }
          //
          batch.deleteWhere(SQL.anioAcademico, (row) => const Constant(true));
          batch.insertAll(SQL.anioAcademico, anioAcademicoList, mode: InsertMode.insertOrReplace );
        }

        if(datosInicioPadre.containsKey("parametroConfiguracion")){
          batch.deleteWhere(SQL.parametroConfiguracion, (row) => const Constant(true));
          batch.insertAll(SQL.parametroConfiguracion, SerializableConvert.converListSerializeParametroConfiguracion(datosInicioPadre["parametroConfiguracion"]), mode: InsertMode.insertOrReplace );
        }


      });

       UsuarioUi usuarioUi = new UsuarioUi();
       usuarioUi.empleadoId = empleadoId;
       usuarioUi.anioAcademicoIdSelected = anioAcademicoId;
       return usuarioUi;

    }catch(e){
      print("Error: " + e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<LoginUi> saveDatosServidor(Map<String, dynamic> datosServidor)async {
    AppDataBase SQL = AppDataBase();
    try{
      LoginUi loginUi;
      AdminServiceSerializable serviceSerializable = AdminServiceSerializable.fromJson(datosServidor);

      if(serviceSerializable.UsuarioId==-1){
        loginUi = LoginUi.INVALIDO;
      }else{
        if(serviceSerializable.UsuarioExternoId>0){
          loginUi = LoginUi.SUCCESS;
          SessionUserData sessionUserData = SessionUserData(userId: serviceSerializable.UsuarioExternoId, urlServerLocal: serviceSerializable.UrlServiceMovil);
          await SQL.into(SQL.sessionUser).insert(sessionUserData, mode: InsertMode.insertOrReplace);
        }else{
          loginUi = LoginUi.DUPLICADO;
        }
      }
      return loginUi;
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> saveUsuario(Map<String, dynamic> datosUsuario)async {
    AppDataBase SQL = AppDataBase();
    try{
      await SQL.batch((batch) async {


        int usuarioId = 0;
        int personaId = 0;
        String usuario = "";
        String password = "";
        bool estado = false;
        String numDoc = "";
        bool habilitarAcceso = false;
        String nombres = "";
        String apellidoPaterno = "";
        String apellidoMaterno = "";
        String fotoPersona = "";
        String fotoEntidad = "";

        if(datosUsuario.containsKey("usuarioId")){
            usuarioId = datosUsuario["usuarioId"];
        }
        if(datosUsuario.containsKey("personaId")){
          personaId = datosUsuario["personaId"];
        }
        if(datosUsuario.containsKey("usuario")){
          usuario = datosUsuario["usuario"];
        }
        if(datosUsuario.containsKey("password")){
          password = datosUsuario["password"];
        }
        if(datosUsuario.containsKey("estado")){
          estado = datosUsuario["estado"];
        }
        if(datosUsuario.containsKey("numDoc")){
          numDoc = datosUsuario["numDoc"];
        }
        if(datosUsuario.containsKey("habilitarAcceso")){
          habilitarAcceso = datosUsuario["habilitarAcceso"];
        }
        if(datosUsuario.containsKey("nombres")){
          nombres = datosUsuario["nombres"];
        }
        if(datosUsuario.containsKey("apellidoPaterno")){
          apellidoPaterno = datosUsuario["apellidoPaterno"];
        }
        if(datosUsuario.containsKey("apellidoMaterno")){
          apellidoMaterno = datosUsuario["apellidoMaterno"];
        }
        if(datosUsuario.containsKey("fotoPersona")){
          fotoPersona = datosUsuario["fotoPersona"];
        }
        if(datosUsuario.containsKey("fotoEntidad")){
          fotoEntidad = datosUsuario["fotoEntidad"];
        }
        batch.deleteWhere(SQL.usuario, (row) => const Constant(true));
        batch.deleteWhere(SQL.persona, (row) => const Constant(true));
        batch.insert(SQL.usuario, UsuarioData(usuarioId: usuarioId, personaId: personaId, usuario: usuario, estado: estado, habilitarAcceso: habilitarAcceso));
        batch.insert(SQL.persona, PersonaData(personaId: personaId, nombres: nombres, apellidoPaterno: apellidoPaterno, apellidoMaterno: apellidoMaterno,foto: fotoPersona));


        if(datosUsuario.containsKey("entidades")){
          //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
          //database.personaDao.insertAllTodo(SerializableConvert.converListSerializePersona(datosInicioPadre["personas"]));
          batch.deleteWhere(SQL.entidad, (row) => const Constant(true));
          batch.insertAll(SQL.entidad, SerializableConvert.converListSerializeEntidad(datosUsuario["entidades"]), mode: InsertMode.insertOrReplace);
        }

        if(datosUsuario.containsKey("georeferencias")){
          batch.deleteWhere(SQL.georeferencia, (row) => const Constant(true));
          batch.insertAll(SQL.georeferencia, SerializableConvert.converListSerializeGeoreferencia(datosUsuario["georeferencias"]), mode: InsertMode.insertOrReplace );
        }

        if(datosUsuario.containsKey("roles")){
          //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
          batch.deleteWhere(SQL.rol, (row) => const Constant(true));
          batch.insertAll(SQL.rol, SerializableConvert.converListSerializeRol(datosUsuario["roles"]), mode: InsertMode.insertOrReplace);
        }

        if(datosUsuario.containsKey("usuarioRolGeoreferencias")){
          //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
          batch.deleteWhere(SQL.usuarioRolGeoreferencia, (row) => const Constant(true));
          batch.insertAll(SQL.usuarioRolGeoreferencia, SerializableConvert.converListSerializeUsuarioRolGeoreferencia(datosUsuario["usuarioRolGeoreferencias"]), mode: InsertMode.insertOrReplace);
        }
      });
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> updateUsuarioSuccessData(int usuarioId) async {
    AppDataBase SQL = AppDataBase();
    try{
      SessionUserData sessionUserData = await(SQL.selectSingle(SQL.sessionUser).getSingle());
      if(sessionUserData!=null){
        await SQL.update(SQL.sessionUser).replace(sessionUserData.copyWith(complete: true));
      }
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<bool> validarRol(int usuarioId) async {
    AppDataBase SQL = AppDataBase();
    try{
      var query = SQL.selectSingle(SQL.usuarioRolGeoreferencia)..where((tbl) => tbl.usuarioId.equals(usuarioId));
      query.where((tbl) => tbl.rolId.equals(4));
      UsuarioRolGeoreferenciaData usuarioRolGeoreferenciaData = await query.getSingle();
      return usuarioRolGeoreferenciaData!=null;
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> saveDatosAnioAcademico(Map<String, dynamic> datosAnioAcademico) async{
    AppDataBase SQL = AppDataBase();
    try{
      await SQL.batch((batch) async {


        if(datosAnioAcademico.containsKey("aulas")){
          batch.deleteWhere(SQL.aula, (row) => const Constant(true));
          batch.insertAll(SQL.aula, SerializableConvert.converListSerializeAula(datosAnioAcademico["aulas"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("cargasAcademicas")){
          batch.deleteWhere(SQL.cargaAcademica, (row) => const Constant(true));
          batch.insertAll(SQL.cargaAcademica, SerializableConvert.converListSerializeCargaAcademica(datosAnioAcademico["cargasAcademicas"]), mode: InsertMode.insertOrReplace );
        }

        if(datosAnioAcademico.containsKey("cargaCursoDocente")){
          batch.deleteWhere(SQL.cargaCursoDocente, (row) => const Constant(true));
          batch.insertAll(SQL.cargaCursoDocente, SerializableConvert.converListSerializeCargaCursoDocente(datosAnioAcademico["cargaCursoDocente"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("cargaCursoDocenteDet")){
          batch.deleteWhere(SQL.cargaCursoDocenteDet, (row) => const Constant(true));
          batch.insertAll(SQL.cargaCursoDocenteDet, SerializableConvert.converListSerializeCargaCursoDocenteDet(datosAnioAcademico["cargaCursoDocenteDet"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("cargaCursos")){
          batch.deleteWhere(SQL.cargaCurso, (row) => const Constant(true));
          batch.insertAll(SQL.cargaCurso, SerializableConvert.converListSerializeCargaCurso(datosAnioAcademico["cargaCursos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("cursos")){
          batch.deleteWhere(SQL.cursos, (row) => const Constant(true));
          batch.insertAll(SQL.cursos, SerializableConvert.converListSerializeCursos(datosAnioAcademico["cursos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("parametrosDisenio")){
          batch.deleteWhere(SQL.parametrosDisenio, (row) => const Constant(true));
          batch.insertAll(SQL.parametrosDisenio, SerializableConvert.converListSerializeParametrosDisenio(datosAnioAcademico["parametrosDisenio"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("nivelesAcademicos")){
          batch.deleteWhere(SQL.nivelAcademico, (row) => const Constant(true));
          batch.insertAll(SQL.nivelAcademico, SerializableConvert.converListSerializeNivelAcademico(datosAnioAcademico["nivelesAcademicos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("periodos")){
          batch.deleteWhere(SQL.periodos, (row) => const Constant(true));
          batch.insertAll(SQL.periodos, SerializableConvert.converListSerializePeriodos(datosAnioAcademico["periodos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("planCursos")){
          batch.deleteWhere(SQL.planCursos, (row) => const Constant(true));
          batch.insertAll(SQL.planCursos, SerializableConvert.converListSerializePlanCurso(datosAnioAcademico["planCursos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("planEstudios")){
          batch.deleteWhere(SQL.planEstudio, (row) => const Constant(true));
          batch.insertAll(SQL.planEstudio, SerializableConvert.converListSerializePlanEstudio(datosAnioAcademico["planEstudios"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("programasEducativos")){
          batch.deleteWhere(SQL.programasEducativo, (row) => const Constant(true));
          batch.insertAll(SQL.programasEducativo, SerializableConvert.converListSerializeProgramasEducativo(datosAnioAcademico["programasEducativos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("secciones")){
          batch.deleteWhere(SQL.seccion, (row) => const Constant(true));
          batch.insertAll(SQL.seccion, SerializableConvert.converListSerializeSeccion(datosAnioAcademico["secciones"]), mode: InsertMode.insertOrReplace);
        }


        if(datosAnioAcademico.containsKey("silaboEvento")){
          batch.deleteWhere(SQL.silaboEvento, (row) => const Constant(true));
          batch.insertAll(SQL.silaboEvento, SerializableConvert.converListSerializeSilaboEvento(datosAnioAcademico["silaboEvento"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("calendarioPeriodos")){
          batch.deleteWhere(SQL.calendarioPeriodo, (row) => const Constant(true));
          batch.insertAll(SQL.calendarioPeriodo, SerializableConvert.converListSerializeCalendarioPeriodo(datosAnioAcademico["calendarioPeriodos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("calendarioPeriodoDetalles")){
          batch.deleteWhere(SQL.calendarioPeriodoDetalle, (row) => const Constant(true));
          batch.insertAll(SQL.calendarioPeriodoDetalle, SerializableConvert.converListSerializeCalendarioPeriodoDetalle(datosAnioAcademico["calendarioPeriodoDetalles"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("cargaCursoCalendarioPeriodo")){
          batch.deleteWhere(SQL.cargaCursoCalendarioPeriodo, (row) => const Constant(true));
          batch.insertAll(SQL.cargaCursoCalendarioPeriodo, SerializableConvert.converListSerializeCargaCursoCalendarioPeriodo(datosAnioAcademico["cargaCursoCalendarioPeriodo"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("tipos")){
          batch.deleteWhere(SQL.tipos, (row) => const Constant(true));
          batch.insertAll(SQL.tipos, SerializableConvert.converListSerializeTipos(datosAnioAcademico["tipos"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("calendarioAcademico")){
          batch.deleteWhere(SQL.calendarioAcademico, (row) => const Constant(true));
          batch.insertAll(SQL.calendarioAcademico, SerializableConvert.converListSerializeCalendarioAcademico(datosAnioAcademico["calendarioAcademico"]), mode: InsertMode.insertOrReplace);
        }

        if(datosAnioAcademico.containsKey("hora")){
          batch.deleteWhere(SQL.hora, (row) => const Constant(true));
          batch.insertAll(SQL.hora, SerializableConvert.converListSerializeHora(datosAnioAcademico["hora"]), mode: InsertMode.insertOrReplace);
        }
        if(datosAnioAcademico.containsKey("horarioPrograma")){
          batch.deleteWhere(SQL.horarioPrograma, (row) => const Constant(true));
          batch.insertAll(SQL.horarioPrograma, SerializableConvert.converListSerializeHorarioPrograma(datosAnioAcademico["horarioPrograma"]), mode: InsertMode.insertOrReplace);
        }
        if(datosAnioAcademico.containsKey("horarioHora")){
          batch.deleteWhere(SQL.horarioHora, (row) => const Constant(true));
          batch.insertAll(SQL.horarioHora, SerializableConvert.converListSerializeHorariosHora(datosAnioAcademico["horarioHora"]), mode: InsertMode.insertOrReplace);
        }
        if(datosAnioAcademico.containsKey("dia")){
          batch.deleteWhere(SQL.dia, (row) => const Constant(true));
          batch.insertAll(SQL.dia, SerializableConvert.converListSerializeDia(datosAnioAcademico["dia"]), mode: InsertMode.insertOrReplace);
        }
        if(datosAnioAcademico.containsKey("cursosDetHorario")){
          batch.deleteWhere(SQL.cursosDetHorario, (row) => const Constant(true));
          batch.insertAll(SQL.cursosDetHorario, SerializableConvert.converListSerializeCursoDetHorario(datosAnioAcademico["horarioHora"]), mode: InsertMode.insertOrReplace);
        }
        if(datosAnioAcademico.containsKey("horario")){
          batch.deleteWhere(SQL.horario, (row) => const Constant(true));
          batch.insertAll(SQL.horario, SerializableConvert.converListSerializeHorario(datosAnioAcademico["horario"]), mode: InsertMode.insertOrReplace);
        }
        if(datosAnioAcademico.containsKey("bEWebConfigs")){
          batch.deleteWhere(SQL.webConfigs, (row) => const Constant(true));
          batch.insertAll(SQL.webConfigs, SerializableConvert.converListSerializeWebConfigs(datosAnioAcademico["bEWebConfigs"]), mode: InsertMode.insertOrReplace);
        }
      });
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<UsuarioUi> getSessionUsuario() async {

    AppDataBase SQL = AppDataBase();
    int usuarioId = await getSessionUsuarioId();
    var query =  await SQL.select(SQL.persona).join([
      innerJoin(SQL.usuario, SQL.usuario.personaId.equalsExp(SQL.persona.personaId))
    ]);

    query.where(SQL.usuario.usuarioId.equals(usuarioId));
    var resultRow = await query.getSingle();
    PersonaData personaData = resultRow.readTable(SQL.persona);

    String fechaNacimiento = "";
    if(personaData.fechaNac!=null&&personaData.fechaNac.isNotEmpty){
      DateTime fecPad = AppTools.convertDateTimePtBR(personaData?.fechaNac, null);
      fechaNacimiento = "${AppTools.calcularEdad(fecPad)} años (${AppTools.f_fecha_anio_mes_letras(fecPad)})";

    }

    UsuarioUi usuarioUi = UsuarioUi();
    usuarioUi.personaId = personaData?.personaId;
    usuarioUi.nombre = '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}';
    usuarioUi.foto = '${AppTools.capitalize(personaData.foto)}';
    usuarioUi.correo = personaData.correo;
    usuarioUi.celular = personaData.celular??personaData.telefono??"";
    usuarioUi.fechaNacimiento = fechaNacimiento;
    usuarioUi.nombreSimple = AppTools.capitalize(personaData.nombres);
    usuarioUi.fechaNacimiento2 = personaData.fechaNac;

    return usuarioUi;


  }



}