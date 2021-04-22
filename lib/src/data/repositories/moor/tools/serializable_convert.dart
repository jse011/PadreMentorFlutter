import 'package:moor/src/runtime/data_class.dart';
import 'package:ss_crmeducativo/src/data/helpers/serelizable/rest_api_response.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/database/app_database.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/model/horario_hora.dart';

class SerializableConvert{
  static EntidadData converSerializeEntidad(Map<String,dynamic> model){
    EntidadSerializable serial = EntidadSerializable.fromJson(model);
    return EntidadData(
        entidadId: serial.entidadId,
        tipoId: serial.tipoId,
        parentId: serial.parentId,
        nombre: serial.nombre,
        ruc: serial.ruc,
        site: serial.site,
        telefono: serial.telefono,
        correo: serial.correo,
        foto: serial.foto,
        estadoId: serial.entidadId
    );
  }
  static List<Insertable<EntidadData>> converListSerializeEntidad(model) {
    List<EntidadData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeEntidad(item));
    }
    return items;
  }

  static GeoreferenciaData converSerializeGeoreferencia(Map<String,dynamic> model){
    GeoreferenciaSerializable serial = GeoreferenciaSerializable.fromJson(model);
    return GeoreferenciaData(
        georeferenciaId: serial.georeferenciaId,
        nombre: serial.nombre,
        entidadId: serial.entidadId,
        geoAlias: serial.alias,
        estadoId: serial.estadoId
    );
  }

  static List<GeoreferenciaData> converListSerializeGeoreferencia(dynamic model){
    List<GeoreferenciaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeGeoreferencia(item));
    }
    return items;
  }

  static RolData converSerializeRol(Map<String,dynamic> model){
    RolSerializable serial = RolSerializable.fromJson(model);
    return RolData(
        rolId: serial.rolId,
        nombre: serial.nombre,
        parentId: serial.parentId,
        estado: serial.estado
    );
  }

  static List<RolData> converListSerializeRol(dynamic model){
    List<RolData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeRol(item));
    }
    return items;
  }

  static UsuarioRolGeoreferenciaData converSerializeUsuarioRolGeoreferencia(Map<String,dynamic> model){
    UsuarioRolGeoreferenciaSerializable serial = UsuarioRolGeoreferenciaSerializable.fromJson(model);
    return UsuarioRolGeoreferenciaData(
        usuarioRolGeoreferenciaId: serial.usuarioRolGeoreferenciaId,
        usuarioId: serial.usuarioId,
        rolId: serial.rolId,
        geoReferenciaId: serial.geoReferenciaId,
        entidadId: serial.entidadId
    );
  }

  static List<UsuarioRolGeoreferenciaData> converListSerializeUsuarioRolGeoreferencia(dynamic model){
    List<UsuarioRolGeoreferenciaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeUsuarioRolGeoreferencia(item));
    }
    return items;
  }

  static PersonaData converSerializePersona(Map<String,dynamic> model){
    PersonaSerial personaSerial = PersonaSerial.fromJson(model);
    return PersonaData(
        personaId: personaSerial.personaId,
        nombres: personaSerial.nombres,
        apellidoPaterno: personaSerial.apellidoPaterno,
        apellidoMaterno: personaSerial.apellidoMaterno,
        celular: personaSerial.celular,
        telefono: personaSerial.telefono,
        foto: personaSerial.foto,
        fechaNac: personaSerial.fechaNac,
        genero: personaSerial.genero,
        estadoCivil: personaSerial.estadoCivil,
        numDoc: personaSerial.numDoc,
        ocupacion: personaSerial.ocupacion,
        estadoId: personaSerial.estadoId,
        correo: personaSerial.correo,
        direccion: personaSerial.direccion,
        path: personaSerial.path);
    //insert.personaId = Values(1);
  }

  static List<PersonaData> converListSerializePersona(dynamic model){
    List<PersonaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePersona(item));
    }
    return items;
  }

  static EmpleadoData converSerializeEmpleado(Map<String,dynamic> model){
    EmpleadoSerial empleadoSerial = EmpleadoSerial.fromJson(model);
    return EmpleadoData(
      empleadoId: empleadoSerial.empleadoId,
      personaId: empleadoSerial.personaId,
      estado: empleadoSerial.estado,
      linkURL: empleadoSerial.linkURL,
      tipoId: empleadoSerial.tipoId,
      web: empleadoSerial.web
    );
    //insert.personaId = Values(1);
  }

  static List<EmpleadoData> converListSerializeEmpleado(dynamic model){
    List<EmpleadoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeEmpleado(item));
    }
    return items;
  }

  static AnioAcademicoData converSerializeAnioAcademico(Map<String,dynamic> model){
    AnioAcademicoSerial academicoSerial = AnioAcademicoSerial.fromJson(model);
    return AnioAcademicoData(
        idAnioAcademico: academicoSerial.idAnioAcademico,
        nombre: academicoSerial.nombre,
        fechaInicio: academicoSerial.fechaInicio,
        fechaFin: academicoSerial.fechaFin,
        denominacion: academicoSerial.denominacion,
        tipoId: academicoSerial.tipoId,
        georeferenciaId: academicoSerial.georeferenciaId,
        organigramaId: academicoSerial.organigramaId,
        estadoId: academicoSerial.estadoId,
    );
  }

  static List<AnioAcademicoData> converListSerializeAnioAcademico(dynamic model){
    List<AnioAcademicoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeAnioAcademico(item));
    }
    return items;
  }

  static ParametroConfiguracionData converSerializeParametroConfiguracion(Map<String,dynamic> model){
    ParametroConfiguracionSerial parametroConfiguracionSerial = ParametroConfiguracionSerial.fromJson(model);
    return ParametroConfiguracionData(
        id: parametroConfiguracionSerial.id,
        concepto: parametroConfiguracionSerial.concepto,
         parametro: parametroConfiguracionSerial.parametro,
        entidadId: parametroConfiguracionSerial.entidadId,
        orden: parametroConfiguracionSerial.orden
    );
  }

  static List<ParametroConfiguracionData> converListSerializeParametroConfiguracion(dynamic model){
    List<ParametroConfiguracionData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeParametroConfiguracion(item));
    }
    return items;
  }
  static AulaData converSerializeAula(Map<String,dynamic> model){
    AulaSerial aulaSerial = AulaSerial.fromJson(model);
    return AulaData(
      aulaId: aulaSerial.aulaId,
      descripcion: aulaSerial.descripcion,
      capacidad: int.parse(aulaSerial.capacidad??"0"),
      numero: aulaSerial.numero,
      estado: aulaSerial.estado
    );
  }

  static List<AulaData> converListSerializeAula(dynamic model){
    List<AulaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeAula(item));
    }
    return items;
  }
  static CargaAcademicaData converSerializeCargaAcademica(Map<String,dynamic> model){
    CargaAcademicaSerial cargaAcademicaSerial = CargaAcademicaSerial.fromJson(model);
    return CargaAcademicaData(
        cargaAcademicaId: cargaAcademicaSerial.cargaAcademicaId,
      aulaId: cargaAcademicaSerial.aulaId,
      idAnioAcademico: cargaAcademicaSerial.idAnioAcademico,
      periodoId: cargaAcademicaSerial.periodoId,
      idEmpleadoTutor: cargaAcademicaSerial.idEmpleadoTutor,
      idGrupo: cargaAcademicaSerial.idGrupo,
      idPeriodoAcad: cargaAcademicaSerial.idPeriodoAcad,
      idPlanEstudio: cargaAcademicaSerial.idPlanEstudio,
      idPlanEstudioVersion: cargaAcademicaSerial.idPlanEstudioVersion,
      capacidadVacante: cargaAcademicaSerial.capacidadVacante,
      capacidadVacanteD: cargaAcademicaSerial.capacidadVacanteD,
      seccionId: cargaAcademicaSerial.seccionId
    );
  }

  static List<CargaAcademicaData> converListSerializeCargaAcademica(dynamic model){
    List<CargaAcademicaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCargaAcademica(item));
    }
    return items;
  }
  static CargaCursoDocenteData converSerializeCargaCursoDocente(Map<String,dynamic> model){
    CargaCursoDocenteSerial cursoDocenteSerial = CargaCursoDocenteSerial.fromJson(model);
    return CargaCursoDocenteData(
        cargaCursoDocenteId: cursoDocenteSerial.cargaCursoDocenteId,
        cargaCursoId: cursoDocenteSerial.cargaCursoId,
        docenteId: cursoDocenteSerial.docenteId,
       responsable: cursoDocenteSerial.responsable
    );
  }

  static List<CargaCursoDocenteData> converListSerializeCargaCursoDocente(dynamic model){
    List<CargaCursoDocenteData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCargaCursoDocente(item));
    }
    return items;
  }
  static CargaCursoDocenteDetData converSerializeCargaCursoDocenteDet(Map<String,dynamic> model){
    CargaCursoDocenteDetSerial cargaCursoDocenteDetSerial = CargaCursoDocenteDetSerial.fromJson(model);
    return CargaCursoDocenteDetData(
       cargaCursoDocenteId: cargaCursoDocenteDetSerial.cargaCursoDocenteId,
      alumnoId: cargaCursoDocenteDetSerial.alumnoId
    );
  }

  static List<CargaCursoDocenteDetData> converListSerializeCargaCursoDocenteDet(dynamic model){
    List<CargaCursoDocenteDetData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCargaCursoDocenteDet(item));
    }
    return items;
  }
  static CargaCursoData converSerializeCargaCurso(Map<String,dynamic> model){
    CargaCursosSerial serial = CargaCursosSerial.fromJson(model);

    return CargaCursoData(cargaCursoId: serial.cargaCursoId,
        planCursoId: serial.planCursoId,
        empleadoId: serial.empleadoId,
        cargaAcademicaId: serial.cargaAcademicaId,
        complejo: serial.complejo,
        evaluable: serial.evaluable,
        idempleado: serial.idempleado,
        idTipoHora: serial.idTipoHora,
        descripcion: serial.descripcion,
        fechaInicio: DateTime.fromMillisecondsSinceEpoch(serial.fechaInicio),
        fechafin: DateTime.fromMillisecondsSinceEpoch(serial.fechafin),
        modo: serial.modo,
        estado: serial.estado,
        anioAcademicoId: serial.anioAcademicoId,
        aulaId: serial.aulaId,
        grupoId: serial.grupoId,
        idPlanEstudio: serial.idPlanEstudio,
        idPlanEstudioVersion: serial.idPlanEstudioVersion,
        CapacidadVacanteP: serial.CapacidadVacanteP,
        CapacidadVacanteD: serial.CapacidadVacanteD,
        nombreDocente: serial.nombreDocente,
        personaIdDocente: serial.personaIdDocente,
        fotoDocente: serial.fotoDocente
    );
  }

  static List<CargaCursoData> converListSerializeCargaCurso(dynamic model){
    List<CargaCursoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCargaCurso(item));
    }
    return items;
  }
  static List<Curso> converListSerializeCursos(dynamic model){
    List<Curso> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCursos(item));
    }
    return items;
  }

  static Curso converSerializeCursos(Map<String,dynamic> model){
    CursosSerializable serial = CursosSerializable.fromJson(model);
    return Curso(
        cursoId: serial.cursoId,
        nombre: serial.nombre,
        estadoId: serial.estadoId,
        descripcion: serial.descripcion,
        cursoAlias: serial.alias,
        entidadId: serial.entidadId,
        nivelAcadId: serial.nivelAcadId,
        tipoCursoId: serial.tipoCursoId,
        tipoConceptoId: serial.tipoConceptoId,
        color: serial.color,
        creditos: serial.creditos,
        totalHP: serial.totalHP,
        totalHT: serial.totalHT,
        notaAprobatoria: serial.notaAprobatoria,
        sumilla: serial.sumilla,
        superId: serial.superId,
        idServicioLaboratorio: serial.idServicioLaboratorio,
        horasLaboratorio: serial.horasLaboratorio,
        tipoSubcurso: serial.tipoSubcurso,
        foto: serial.foto,
        codigo: serial.codigo);
    //insert.personaId = Values(1);
  }
  static List<NivelAcademicoData> converListSerializeNivelAcademico(dynamic model){
    List<NivelAcademicoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeNivelAcademico(item));
    }
    return items;
  }

  static NivelAcademicoData converSerializeNivelAcademico(Map<String,dynamic> model){
    NivelAcademicoSeraializable serial = NivelAcademicoSeraializable.fromJson(model);
    return NivelAcademicoData(
        nivelAcadId: serial.nivelAcadId,
        nombre: serial.nombre,
        activo: serial.activo,
        entidadId: serial.entidadId);
  }

  static ParametrosDisenioData converSerializeParametrosDisenio(Map<String,dynamic> model){
    ParametrosDisenioSerial serial = ParametrosDisenioSerial.fromJson(model);
    return ParametrosDisenioData(
        parametroDisenioId: serial.parametroDisenioId,
        objeto: serial.objeto,
        concepto: serial.concepto,
        nombre: serial.nombre,
        path: serial.path,
        color1: serial.color1,
        color2: serial.color2,
        color3: serial.color3,
        estado: serial.estado
    );
  }

  static List<ParametrosDisenioData> converListSerializeParametrosDisenio(dynamic model){
    List<ParametrosDisenioData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeParametrosDisenio(item));
    }
    return items;
  }
  static PlanCurso converSerializePlanCurso(Map<String,dynamic> model){
    PlanCursosSerial serial = PlanCursosSerial.fromJson(model);

    return PlanCurso(planCursoId: serial.planCursoId,
        cursoId: serial.cursoId,
        periodoId: serial.periodoId,
        planEstudiosId: serial.planEstudiosId);
  }

  static List<PlanCurso> converListSerializePlanCurso(dynamic model){
    List<PlanCurso> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePlanCurso(item));
    }
    return items;
  }
  static List<Periodo> converListSerializePeriodos(dynamic model){
    List<Periodo> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePeriodos(item));
    }
    return items;
  }

  static Periodo converSerializePeriodos(Map<String,dynamic> model){
    PeriodosSeraializable serial = PeriodosSeraializable.fromJson(model);
    return Periodo(
        periodoId: serial.periodoId,
        nombre: serial.nombre,
        estadoId: serial.estadoId,
        aliasPeriodo: serial.alias,
        fecComienzo: serial.fecComienzo,
        fecTermino: serial.fecTermino,
        tipoId: serial.tipoId,
        superId: serial.superId,
        geoReferenciaId: serial.geoReferenciaId,
        organigramaId: serial.organigramaId,
        entidadId: serial.entidadId,
        activo: serial.activo,
        cicloId: serial.cicloId,
        docenteId: serial.docenteId,
        gruponombre: serial.gruponombre,
        grupoId: serial.grupoId,
        nivelAcademico: serial.nivelAcademico,
        nivelAcademicoId: serial.nivelAcademicoId,
        tutorId: serial.tutorId);
  }
  static ProgramasEducativoData converSerializeProgramasEducativo(Map<String,dynamic> model){
    ProgramasEducativoSerial serial = ProgramasEducativoSerial.fromJson(model);

    return ProgramasEducativoData( programaEduId: serial.programaEduId,
        nombre: serial.nombre,
        nroCiclos: serial.nroCiclos,
        nivelAcadId: serial.nivelAcadId,
        tipoEvaluacionId: serial.tipoEvaluacionId,
        estadoId: serial.estadoId,
        entidadId: serial.entidadId,
        tipoInformeSiagieId: serial.tipoInformeSiagieId,
        /*toogle: serial.,*/
        tipoProgramaId: serial.tipoProgramaId,
        tipoMatriculaId: serial.tipoMatriculaId);
  }

  static List<ProgramasEducativoData> converListSerializeProgramasEducativo(dynamic model){
    List<ProgramasEducativoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeProgramasEducativo(item));
    }
    return items;
  }
  static PlanEstudioData converSerializePlanEstudio(Map<String,dynamic> model){
    PlanEstudiosSerial serial = PlanEstudiosSerial.fromJson(model);

    return PlanEstudioData( planEstudiosId: serial.planEstudiosId,
        programaEduId: serial.programaEduId,
        nombrePlan: serial.nombrePlan,
        aliasPlan: serial.alias,
        estadoId: serial.estadoId,
        nroResolucion: serial.nroResolucion,
        fechaResolucion: serial.fechaResolucion);
  }

  static List<PlanEstudioData> converListSerializePlanEstudio(dynamic model){
    List<PlanEstudioData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePlanEstudio(item));
    }
    return items;
  }
  static List<SeccionData> converListSerializeSeccion(dynamic model){
    List<SeccionData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeSeccion(item));
    }
    return items;
  }

  static SeccionData converSerializeSeccion(Map<String,dynamic> model){
    SeccionSeraializable serial = SeccionSeraializable.fromJson(model);
    return SeccionData(
        seccionId: serial.seccionId,
        nombre: serial.nombre,
        descripcion: serial.descripcion,
        estado: serial.estado,
        georeferenciaId: serial.georeferenciaId);
  }
  static SilaboEventoData converSerializeSilaboEvento(Map<String,dynamic> model){
    SilaboEventoSerial serial = SilaboEventoSerial.fromJson(model);
    return SilaboEventoData(
        silaboEventoId: serial.silaboEventoId,
        titulo: serial.titulo,
        descripcionGeneral: serial.descripcionGeneral,
        planCursoId: serial.planCursoId,
        entidadId: serial.entidadId,
        docenteId: serial.docenteId,
        seccionId: serial.seccionId,
        estadoId: serial.estadoId,
        anioAcademicoId: serial.anioAcademicoId,
        georeferenciaId: serial.georeferenciaId,
        silaboBaseId: serial.silaboBaseId,
        cargaCursoId: serial.cargaCursoId,
        parametroDisenioId: serial.parametroDisenioId,
        fechaInicio: serial.fechaFin,
        fechaFin: serial.fechaFin
    );
  }

  static List<SilaboEventoData> converListSerializeSilaboEvento(dynamic model){
    List<SilaboEventoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeSilaboEvento(item));
    }
    return items;
  }

  static CalendarioPeriodoData converSerializeCalendarioPeriodo(Map<String,dynamic> model){
    CalendarioPeriodoSerial serial = CalendarioPeriodoSerial.fromJson(model);

    return CalendarioPeriodoData(
        calendarioPeriodoId: serial.calendarioPeriodoId,
        fechaInicio:  DateTime.fromMillisecondsSinceEpoch(serial.fechaInicio),
        fechaFin:  DateTime.fromMillisecondsSinceEpoch(serial.fechaFin),
        calendarioAcademicoId: serial.calendarioAcademicoId,
        tipoId: serial.tipoId,
        estadoId: serial.estadoId,
        diazPlazo: serial.diazPlazo);
  }

  static List<CalendarioPeriodoData> converListSerializeCalendarioPeriodo(dynamic model){
    List<CalendarioPeriodoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCalendarioPeriodo(item));
    }
    return items;
  }
  static CalendarioPeriodoDetalleData converSerializeCalendarioPeriodoDetalle(Map<String,dynamic> model){
    CalendarioPeriodoDetalleSerial serial = CalendarioPeriodoDetalleSerial.fromJson(model);

    return CalendarioPeriodoDetalleData(
      calendarioPeriodoDetId: serial.calendarioPeriodoDetId,
      calendarioPeriodoId: serial.calendarioPeriodoId,
      tipoId: serial.tipoId,
      descripcion: serial.descripcion,
      diasPlazo: serial.diasPlazo,
      fechaInicio: serial.fechaInicio,
      fechaFin: serial.fechaFin
    );
  }

  static List<CalendarioPeriodoDetalleData> converListSerializeCalendarioPeriodoDetalle(dynamic model){
    List<CalendarioPeriodoDetalleData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCalendarioPeriodoDetalle(item));
    }
    return items;
  }

  static CargaCursoCalendarioPeriodoData converSerializeCargaCursoCalendarioPeriodo(Map<String,dynamic> model){
    CargaCursoCalendarioPeriodoSerial serial = CargaCursoCalendarioPeriodoSerial.fromJson(model);

    return CargaCursoCalendarioPeriodoData(
        cargaCursoCalendarioPeriodoId: serial.cargaCursoCalendarioPeriodoId,
        calendarioPeriodoId: serial.calendarioPeriodoId,
        calendarioPeriodoDetId: serial.calendarioPeriodoDetId,
        planCursoId: serial.planCursoId,
        cargaCursoId: serial.cargaCursoId,
        tipoId: serial.tipoId,
        fechaInicio: serial.fechaInicio,
        fechaFin: serial.fechaFin,
        horaInicio: serial.horaInicio,
        horaFin: serial.horaFin,
        estadoId: serial.estadoId,
        anioAcademicoId: serial.anioAcademicoId,
        cargaAcademicaid: serial.cargaAcademicaid,
        paths: serial.paths
    );
  }

  static List<CargaCursoCalendarioPeriodoData> converListSerializeCargaCursoCalendarioPeriodo(dynamic model){
    List<CargaCursoCalendarioPeriodoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCargaCursoCalendarioPeriodo(item));
    }
    return items;
  }
  static Tipo converSerializeTipos(Map<String,dynamic> model){
    TiposSerial serial = TiposSerial.fromJson(model);

    return Tipo(
        tipoId: serial.tipoId,
        objeto: serial.objeto,
        concepto: serial.concepto,
        nombre: serial.nombre,
        codigo: serial.codigo,
        parentId: serial.parentId);
  }

  static List<Tipo> converListSerializeTipos(dynamic model){
    List<Tipo> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeTipos(item));
    }
    return items;
  }
  static CalendarioAcademicoData converSerializeCalendarioAcademico(Map<String,dynamic> model){
    CalendarioAcademicoSerial serial = CalendarioAcademicoSerial.fromJson(model);

    return CalendarioAcademicoData(
        calendarioAcademicoId: serial.calendarioAcademicoId,
        idAnioAcademico: serial.idAnioAcademico,
        estadoId: serial.estadoId,
        programaEduId: serial.programaEduId
    );
  }

  static List<CalendarioAcademicoData> converListSerializeCalendarioAcademico(dynamic model){
    List<CalendarioAcademicoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCalendarioAcademico(item));
    }
    return items;
  }

  static HorarioData converSerializeHorario(Map<String,dynamic> model){
    HorarioSerial serial = HorarioSerial.fromJson(model);

    return HorarioData(
        idHorario: serial.idHorario,
        descripcion: serial.descripcion,
        nombre: serial.nombre,
        idUsuario: serial.idUsuario,
        entidadId: serial.entidadId,
        estado: serial.estado,
        organigramaId: serial.organigramaId,
        georeferenciaId: serial.georeferenciaId,
        fecActualizacion: serial.fecActualizacion,
        fecCreacion: serial.fecCreacion
    );
  }

  static List<HorarioData> converListSerializeHorario(dynamic model){
    List<HorarioData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeHorario(item));
    }
    return items;
  }

  static HoraData converSerializeHora(Map<String,dynamic> model){
    HoraSerial serial = HoraSerial.fromJson(model);

    return HoraData(
        idHora: serial.idHora,
        horaFin: serial.horaFin,
        horaInicio: serial.horaInicio
    );
  }

  static List<HoraData> converListSerializeHora(dynamic model){
    List<HoraData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeHora(item));
    }
    return items;
  }
  static HorarioProgramaData converSerializeHorarioPrograma(Map<String,dynamic> model){
    HorarioProgramaSerial serial = HorarioProgramaSerial.fromJson(model);

    return HorarioProgramaData(
       idHorarioPrograma: serial.idHorarioPrograma,
       idHorario: serial.idHorario,
       idAnioAcademico: serial.idAnioAcademico,
       activo: serial.activo,
        fechaActualizacion: serial.fechaActualizacion,
      fechaCreacion: serial.fechaCreacion,
      idProgramaEducativo: serial.idProgramaEducativo,
      idUsuarioActualizacion: serial.idUsuarioActualizacion,
      idUsuarioCreacion: serial.idUsuarioCreacion
    );
  }

  static List<HorarioProgramaData> converListSerializeHorarioPrograma(dynamic model){
    List<HorarioProgramaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeHorarioPrograma(item));
    }
    return items;
  }
  static HorarioHoraData converSerializeHoariosHora(Map<String,dynamic> model){
    HorarioHoraSerial serial = HorarioHoraSerial.fromJson(model);

    return HorarioHoraData(
      idHorarioHora: serial.idHorarioHora,
      detalleHoraId: serial.detalleHoraId,
      horaId: serial.horaId
    );
  }

  static List<HorarioHoraData> converListSerializeHorariosHora(dynamic model){
    List<HorarioHoraData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeHoariosHora(item));
    }
    return items;
  }
  static DiaData converSerializeDia(Map<String,dynamic> model){
    DiaSerial serial = DiaSerial.fromJson(model);

    return DiaData(
        diaId: serial.diaId,
        nombre: serial.nombre,
        estado: serial.estado,
        alias_: serial.alias
    );
  }

  static List<DiaData> converListSerializeDia(dynamic model){
    List<DiaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeDia(item));
    }
    return items;
  }
  static HorarioDiaData converSerializeHorarioDia(Map<String,dynamic> model){
    HorarioDiaSerial serial = HorarioDiaSerial.fromJson(model);

    return HorarioDiaData(
        idHorarioDia: serial.idHorarioDia,
        idHorario: serial.idHorario,
        idDia: serial.idDia
    );
  }

  static List<HorarioDiaData> converListSerializeHorarioDia(dynamic model){
    List<HorarioDiaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeHorarioDia(item));
    }
    return items;
  }
  static CursosDetHorarioData converSerializeCursoDetHorario(Map<String,dynamic> model){
    CursosDetHorarioSerial serial = CursosDetHorarioSerial.fromJson(model);

    return CursosDetHorarioData(
        idCursosDetHorario: serial.idCursosDetHorario,
        idCargaCurso: serial.idCargaCurso,
        idDetHorario: serial.idDetHorario
    );
  }

  static List<CursosDetHorarioData> converListSerializeCursoDetHorario(dynamic model){
    List<CursosDetHorarioData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCursoDetHorario(item));
    }
    return items;
  }

  static WebConfig converSerializeWebConfigs(Map<String,dynamic> model){
    WebConfigsSerial serial = WebConfigsSerial.fromJson(model);
    return WebConfig(
        nombre: serial.nombre,
        content: serial.content
    );
  }

  static List<WebConfig> converListSerializeWebConfigs(dynamic model){
    List<WebConfig> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeWebConfigs(item));
    }
    return items;
  }



}

