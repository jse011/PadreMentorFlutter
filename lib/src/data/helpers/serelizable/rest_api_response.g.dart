// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminServiceSerializable _$AdminServiceSerializableFromJson(
    Map<String, dynamic> json) {
  return AdminServiceSerializable(
    UsuarioId: json['UsuarioId'] as int,
    Estado: json['Estado'] as bool,
    EntidadId: json['EntidadId'] as int,
    UsuarioExternoId: json['UsuarioExternoId'] as int,
    UsuarioCreadorId: json['UsuarioCreadorId'] as int,
    UsuarioAccionId: json['UsuarioAccionId'] as int,
    Opcion: json['Opcion'] as int,
    Cantidad: json['Cantidad'] as int,
    UrlServiceMovil: json['UrlServiceMovil'] as String,
  );
}

Map<String, dynamic> _$AdminServiceSerializableToJson(
        AdminServiceSerializable instance) =>
    <String, dynamic>{
      'UsuarioId': instance.UsuarioId,
      'Estado': instance.Estado,
      'EntidadId': instance.EntidadId,
      'UsuarioExternoId': instance.UsuarioExternoId,
      'UsuarioCreadorId': instance.UsuarioCreadorId,
      'UsuarioAccionId': instance.UsuarioAccionId,
      'Opcion': instance.Opcion,
      'Cantidad': instance.Cantidad,
      'UrlServiceMovil': instance.UrlServiceMovil,
    };

EntidadSerializable _$EntidadSerializableFromJson(Map<String, dynamic> json) {
  return EntidadSerializable(
    entidadId: json['entidadId'] as int,
    tipoId: json['tipoId'] as int,
    parentId: json['parentId'] as int,
    nombre: json['nombre'] as String,
    ruc: json['ruc'] as String,
    site: json['site'] as String,
    telefono: json['telefono'] as String,
    correo: json['correo'] as String,
    foto: json['foto'] as String,
    estadoId: json['estadoId'] as int,
  );
}

Map<String, dynamic> _$EntidadSerializableToJson(
        EntidadSerializable instance) =>
    <String, dynamic>{
      'entidadId': instance.entidadId,
      'tipoId': instance.tipoId,
      'parentId': instance.parentId,
      'nombre': instance.nombre,
      'ruc': instance.ruc,
      'site': instance.site,
      'telefono': instance.telefono,
      'correo': instance.correo,
      'foto': instance.foto,
      'estadoId': instance.estadoId,
    };

GeoreferenciaSerializable _$GeoreferenciaSerializableFromJson(
    Map<String, dynamic> json) {
  return GeoreferenciaSerializable(
    georeferenciaId: json['georeferenciaId'] as int,
    nombre: json['nombre'] as String,
    entidadId: json['entidadId'] as int,
    alias: json['alias'] as String,
    estadoId: json['estadoId'] as int,
  );
}

Map<String, dynamic> _$GeoreferenciaSerializableToJson(
        GeoreferenciaSerializable instance) =>
    <String, dynamic>{
      'georeferenciaId': instance.georeferenciaId,
      'nombre': instance.nombre,
      'entidadId': instance.entidadId,
      'alias': instance.alias,
      'estadoId': instance.estadoId,
    };

RolSerializable _$RolSerializableFromJson(Map<String, dynamic> json) {
  return RolSerializable(
    rolId: json['rolId'] as int,
    nombre: json['nombre'] as String,
    parentId: json['parentId'] as int,
    estado: json['estado'] as bool,
  );
}

Map<String, dynamic> _$RolSerializableToJson(RolSerializable instance) =>
    <String, dynamic>{
      'rolId': instance.rolId,
      'nombre': instance.nombre,
      'parentId': instance.parentId,
      'estado': instance.estado,
    };

UsuarioRolGeoreferenciaSerializable
    _$UsuarioRolGeoreferenciaSerializableFromJson(Map<String, dynamic> json) {
  return UsuarioRolGeoreferenciaSerializable(
    usuarioRolGeoreferenciaId: json['usuarioRolGeoreferenciaId'] as int,
    usuarioId: json['usuarioId'] as int,
    rolId: json['rolId'] as int,
    geoReferenciaId: json['geoReferenciaId'] as int,
    entidadId: json['entidadId'] as int,
  );
}

Map<String, dynamic> _$UsuarioRolGeoreferenciaSerializableToJson(
        UsuarioRolGeoreferenciaSerializable instance) =>
    <String, dynamic>{
      'usuarioRolGeoreferenciaId': instance.usuarioRolGeoreferenciaId,
      'usuarioId': instance.usuarioId,
      'rolId': instance.rolId,
      'geoReferenciaId': instance.geoReferenciaId,
      'entidadId': instance.entidadId,
    };

PersonaSerial _$PersonaSerialFromJson(Map<String, dynamic> json) {
  return PersonaSerial(
    personaId: json['personaId'] as int,
    nombres: json['nombres'] as String,
    apellidoPaterno: json['apellidoPaterno'] as String,
    apellidoMaterno: json['apellidoMaterno'] as String,
    celular: json['celular'] as String,
    telefono: json['telefono'] as String,
    foto: json['foto'] as String,
    fechaNac: json['fechaNac'] as String,
    genero: json['genero'] as String,
    estadoCivil: json['estadoCivil'] as String,
    numDoc: json['numDoc'] as String,
    ocupacion: json['ocupacion'] as String,
    estadoId: json['estadoId'] as int,
    correo: json['correo'] as String,
    direccion: json['direccion'] as String,
    path: json['path'] as String,
    image64: json['image64'] as String,
  );
}

Map<String, dynamic> _$PersonaSerialToJson(PersonaSerial instance) =>
    <String, dynamic>{
      'personaId': instance.personaId,
      'nombres': instance.nombres,
      'apellidoPaterno': instance.apellidoPaterno,
      'apellidoMaterno': instance.apellidoMaterno,
      'celular': instance.celular,
      'telefono': instance.telefono,
      'foto': instance.foto,
      'fechaNac': instance.fechaNac,
      'genero': instance.genero,
      'estadoCivil': instance.estadoCivil,
      'numDoc': instance.numDoc,
      'ocupacion': instance.ocupacion,
      'estadoId': instance.estadoId,
      'correo': instance.correo,
      'direccion': instance.direccion,
      'path': instance.path,
      'image64': instance.image64,
    };

EmpleadoSerial _$EmpleadoSerialFromJson(Map<String, dynamic> json) {
  return EmpleadoSerial(
    empleadoId: json['empleadoId'] as int,
    personaId: json['personaId'] as int,
    linkURL: json['linkURL'] as String,
    estado: json['estado'] as bool,
    tipoId: json['tipoId'] as int,
    web: json['web'] as String,
  );
}

Map<String, dynamic> _$EmpleadoSerialToJson(EmpleadoSerial instance) =>
    <String, dynamic>{
      'empleadoId': instance.empleadoId,
      'personaId': instance.personaId,
      'linkURL': instance.linkURL,
      'estado': instance.estado,
      'tipoId': instance.tipoId,
      'web': instance.web,
    };

AnioAcademicoSerial _$AnioAcademicoSerialFromJson(Map<String, dynamic> json) {
  return AnioAcademicoSerial(
    idAnioAcademico: json['idAnioAcademico'] as int,
    nombre: json['nombre'] as String,
    fechaInicio: json['fechaInicio'] as String,
    fechaFin: json['fechaFin'] as String,
    denominacion: json['denominacion'] as String,
    georeferenciaId: json['georeferenciaId'] as int,
    organigramaId: json['organigramaId'] as int,
    estadoId: json['estadoId'] as int,
    tipoId: json['tipoId'] as int,
  );
}

Map<String, dynamic> _$AnioAcademicoSerialToJson(
        AnioAcademicoSerial instance) =>
    <String, dynamic>{
      'idAnioAcademico': instance.idAnioAcademico,
      'nombre': instance.nombre,
      'fechaInicio': instance.fechaInicio,
      'fechaFin': instance.fechaFin,
      'denominacion': instance.denominacion,
      'georeferenciaId': instance.georeferenciaId,
      'organigramaId': instance.organigramaId,
      'estadoId': instance.estadoId,
      'tipoId': instance.tipoId,
    };

ParametroConfiguracionSerial _$ParametroConfiguracionSerialFromJson(
    Map<String, dynamic> json) {
  return ParametroConfiguracionSerial(
    json['id'] as int,
    json['concepto'] as String,
    json['parametro'] as String,
    json['entidadId'] as int,
    json['orden'] as int,
  );
}

Map<String, dynamic> _$ParametroConfiguracionSerialToJson(
        ParametroConfiguracionSerial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'concepto': instance.concepto,
      'parametro': instance.parametro,
      'entidadId': instance.entidadId,
      'orden': instance.orden,
    };

AulaSerial _$AulaSerialFromJson(Map<String, dynamic> json) {
  return AulaSerial(
    aulaId: json['aulaId'] as int,
    descripcion: json['descripcion'] as String,
    numero: json['numero'] as String,
    capacidad: json['capacidad'] as String,
    estado: json['estado'] as int,
  );
}

Map<String, dynamic> _$AulaSerialToJson(AulaSerial instance) =>
    <String, dynamic>{
      'aulaId': instance.aulaId,
      'descripcion': instance.descripcion,
      'numero': instance.numero,
      'capacidad': instance.capacidad,
      'estado': instance.estado,
    };

CargaAcademicaSerial _$CargaAcademicaSerialFromJson(Map<String, dynamic> json) {
  return CargaAcademicaSerial(
    cargaAcademicaId: json['cargaAcademicaId'] as int,
    seccionId: json['seccionId'] as int,
    periodoId: json['periodoId'] as int,
    aulaId: json['aulaId'] as int,
    idPlanEstudio: json['idPlanEstudio'] as int,
    idPlanEstudioVersion: json['idPlanEstudioVersion'] as int,
    idAnioAcademico: json['idAnioAcademico'] as int,
    idEmpleadoTutor: json['idEmpleadoTutor'] as int,
    estadoId: json['estadoId'] as int,
    idPeriodoAcad: json['idPeriodoAcad'] as int,
    idGrupo: json['idGrupo'] as int,
    capacidadVacante: json['capacidadVacante'] as int,
    capacidadVacanteD: json['capacidadVacanteD'] as int,
  );
}

Map<String, dynamic> _$CargaAcademicaSerialToJson(
        CargaAcademicaSerial instance) =>
    <String, dynamic>{
      'cargaAcademicaId': instance.cargaAcademicaId,
      'seccionId': instance.seccionId,
      'periodoId': instance.periodoId,
      'aulaId': instance.aulaId,
      'idPlanEstudio': instance.idPlanEstudio,
      'idPlanEstudioVersion': instance.idPlanEstudioVersion,
      'idAnioAcademico': instance.idAnioAcademico,
      'idEmpleadoTutor': instance.idEmpleadoTutor,
      'estadoId': instance.estadoId,
      'idPeriodoAcad': instance.idPeriodoAcad,
      'idGrupo': instance.idGrupo,
      'capacidadVacante': instance.capacidadVacante,
      'capacidadVacanteD': instance.capacidadVacanteD,
    };

CargaCursoDocenteSerial _$CargaCursoDocenteSerialFromJson(
    Map<String, dynamic> json) {
  return CargaCursoDocenteSerial(
    cargaCursoDocenteId: json['cargaCursoDocenteId'] as int,
    cargaCursoId: json['cargaCursoId'] as int,
    docenteId: json['docenteId'] as int,
    responsable: json['responsable'] as bool,
  );
}

Map<String, dynamic> _$CargaCursoDocenteSerialToJson(
        CargaCursoDocenteSerial instance) =>
    <String, dynamic>{
      'cargaCursoDocenteId': instance.cargaCursoDocenteId,
      'cargaCursoId': instance.cargaCursoId,
      'docenteId': instance.docenteId,
      'responsable': instance.responsable,
    };

CargaCursoDocenteDetSerial _$CargaCursoDocenteDetSerialFromJson(
    Map<String, dynamic> json) {
  return CargaCursoDocenteDetSerial(
    cargaCursoDocenteId: json['cargaCursoDocenteId'] as int,
    alumnoId: json['alumnoId'] as int,
  );
}

Map<String, dynamic> _$CargaCursoDocenteDetSerialToJson(
        CargaCursoDocenteDetSerial instance) =>
    <String, dynamic>{
      'cargaCursoDocenteId': instance.cargaCursoDocenteId,
      'alumnoId': instance.alumnoId,
    };

CursosSerializable _$CursosSerializableFromJson(Map<String, dynamic> json) {
  return CursosSerializable(
    cursoId: json['cursoId'] as int,
    nombre: json['nombre'] as String,
    estadoId: json['estadoId'] as int,
    descripcion: json['descripcion'] as String,
    alias: json['alias'] as String,
    entidadId: json['entidadId'] as int,
    nivelAcadId: json['nivelAcadId'] as int,
    tipoCursoId: json['tipoCursoId'] as int,
    tipoConceptoId: json['tipoConceptoId'] as int,
    color: json['color'] as String,
    creditos: json['creditos'] as String,
    totalHP: json['totalHP'] as String,
    totalHT: json['totalHT'] as String,
    notaAprobatoria: json['notaAprobatoria'] as String,
    sumilla: json['sumilla'] as String,
    superId: json['superId'] as int,
    idServicioLaboratorio: json['idServicioLaboratorio'] as int,
    horasLaboratorio: json['horasLaboratorio'] as int,
    tipoSubcurso: json['tipoSubcurso'] as bool,
    foto: json['foto'] as String,
    codigo: json['codigo'] as String,
  );
}

Map<String, dynamic> _$CursosSerializableToJson(CursosSerializable instance) =>
    <String, dynamic>{
      'cursoId': instance.cursoId,
      'nombre': instance.nombre,
      'estadoId': instance.estadoId,
      'descripcion': instance.descripcion,
      'alias': instance.alias,
      'entidadId': instance.entidadId,
      'nivelAcadId': instance.nivelAcadId,
      'tipoCursoId': instance.tipoCursoId,
      'tipoConceptoId': instance.tipoConceptoId,
      'color': instance.color,
      'creditos': instance.creditos,
      'totalHP': instance.totalHP,
      'totalHT': instance.totalHT,
      'notaAprobatoria': instance.notaAprobatoria,
      'sumilla': instance.sumilla,
      'superId': instance.superId,
      'idServicioLaboratorio': instance.idServicioLaboratorio,
      'horasLaboratorio': instance.horasLaboratorio,
      'tipoSubcurso': instance.tipoSubcurso,
      'foto': instance.foto,
      'codigo': instance.codigo,
    };

CargaCursosSerial _$CargaCursosSerialFromJson(Map<String, dynamic> json) {
  return CargaCursosSerial(
    cargaCursoId: json['cargaCursoId'] as int,
    planCursoId: json['planCursoId'] as int,
    empleadoId: json['empleadoId'] as int,
    cargaAcademicaId: json['cargaAcademicaId'] as int,
    complejo: json['complejo'] as int,
    evaluable: json['evaluable'] as int,
    idempleado: json['idempleado'] as int,
    idTipoHora: json['idTipoHora'] as int,
    descripcion: json['descripcion'] as String,
    fechaInicio: json['fechaInicio'] as int,
    fechafin: json['fechafin'] as int,
    modo: json['modo'] as String,
    estado: json['estado'] as int,
    anioAcademicoId: json['anioAcademicoId'] as int,
    aulaId: json['aulaId'] as int,
    grupoId: json['grupoId'] as int,
    idPlanEstudio: json['idPlanEstudio'] as int,
    idPlanEstudioVersion: json['idPlanEstudioVersion'] as int,
    CapacidadVacanteP: json['CapacidadVacanteP'] as int,
    CapacidadVacanteD: json['CapacidadVacanteD'] as int,
  )
    ..nombreDocente = json['nombreDocente'] as String
    ..personaIdDocente = json['personaIdDocente'] as int
    ..fotoDocente = json['fotoDocente'] as String;
}

Map<String, dynamic> _$CargaCursosSerialToJson(CargaCursosSerial instance) =>
    <String, dynamic>{
      'cargaCursoId': instance.cargaCursoId,
      'planCursoId': instance.planCursoId,
      'empleadoId': instance.empleadoId,
      'cargaAcademicaId': instance.cargaAcademicaId,
      'complejo': instance.complejo,
      'evaluable': instance.evaluable,
      'idempleado': instance.idempleado,
      'idTipoHora': instance.idTipoHora,
      'descripcion': instance.descripcion,
      'fechaInicio': instance.fechaInicio,
      'fechafin': instance.fechafin,
      'modo': instance.modo,
      'estado': instance.estado,
      'anioAcademicoId': instance.anioAcademicoId,
      'aulaId': instance.aulaId,
      'grupoId': instance.grupoId,
      'idPlanEstudio': instance.idPlanEstudio,
      'idPlanEstudioVersion': instance.idPlanEstudioVersion,
      'CapacidadVacanteP': instance.CapacidadVacanteP,
      'CapacidadVacanteD': instance.CapacidadVacanteD,
      'nombreDocente': instance.nombreDocente,
      'personaIdDocente': instance.personaIdDocente,
      'fotoDocente': instance.fotoDocente,
    };

ParametrosDisenioSerial _$ParametrosDisenioSerialFromJson(
    Map<String, dynamic> json) {
  return ParametrosDisenioSerial(
    parametroDisenioId: json['parametroDisenioId'] as int,
    objeto: json['objeto'] as String,
    concepto: json['concepto'] as String,
    nombre: json['nombre'] as String,
    path: json['path'] as String,
    color1: json['color1'] as String,
    color2: json['color2'] as String,
    color3: json['color3'] as String,
    estado: json['estado'] as bool,
  );
}

Map<String, dynamic> _$ParametrosDisenioSerialToJson(
        ParametrosDisenioSerial instance) =>
    <String, dynamic>{
      'parametroDisenioId': instance.parametroDisenioId,
      'objeto': instance.objeto,
      'concepto': instance.concepto,
      'nombre': instance.nombre,
      'path': instance.path,
      'color1': instance.color1,
      'color2': instance.color2,
      'color3': instance.color3,
      'estado': instance.estado,
    };

NivelAcademicoSeraializable _$NivelAcademicoSeraializableFromJson(
    Map<String, dynamic> json) {
  return NivelAcademicoSeraializable(
    nivelAcadId: json['nivelAcadId'] as int,
    nombre: json['nombre'] as String,
    activo: json['activo'] as bool,
    entidadId: json['entidadId'] as int,
  );
}

Map<String, dynamic> _$NivelAcademicoSeraializableToJson(
        NivelAcademicoSeraializable instance) =>
    <String, dynamic>{
      'nivelAcadId': instance.nivelAcadId,
      'nombre': instance.nombre,
      'activo': instance.activo,
      'entidadId': instance.entidadId,
    };

PeriodosSeraializable _$PeriodosSeraializableFromJson(
    Map<String, dynamic> json) {
  return PeriodosSeraializable(
    periodoId: json['periodoId'] as int,
    nombre: json['nombre'] as String,
    estadoId: json['estadoId'] as int,
    alias: json['alias'] as String,
    fecComienzo: json['fecComienzo'] as String,
    fecTermino: json['fecTermino'] as String,
    tipoId: json['tipoId'] as int,
    superId: json['superId'] as int,
    geoReferenciaId: json['geoReferenciaId'] as int,
    organigramaId: json['organigramaId'] as int,
    entidadId: json['entidadId'] as int,
    activo: json['activo'] as bool,
    cicloId: json['cicloId'] as int,
    docenteId: json['docenteId'] as int,
    gruponombre: json['gruponombre'] as String,
    grupoId: json['grupoId'] as int,
    nivelAcademico: json['nivelAcademico'] as String,
    nivelAcademicoId: json['nivelAcademicoId'] as int,
    tutorId: json['tutorId'] as int,
  );
}

Map<String, dynamic> _$PeriodosSeraializableToJson(
        PeriodosSeraializable instance) =>
    <String, dynamic>{
      'periodoId': instance.periodoId,
      'nombre': instance.nombre,
      'estadoId': instance.estadoId,
      'alias': instance.alias,
      'fecComienzo': instance.fecComienzo,
      'fecTermino': instance.fecTermino,
      'tipoId': instance.tipoId,
      'superId': instance.superId,
      'geoReferenciaId': instance.geoReferenciaId,
      'organigramaId': instance.organigramaId,
      'entidadId': instance.entidadId,
      'activo': instance.activo,
      'cicloId': instance.cicloId,
      'docenteId': instance.docenteId,
      'gruponombre': instance.gruponombre,
      'grupoId': instance.grupoId,
      'nivelAcademico': instance.nivelAcademico,
      'nivelAcademicoId': instance.nivelAcademicoId,
      'tutorId': instance.tutorId,
    };

PlanCursosSerial _$PlanCursosSerialFromJson(Map<String, dynamic> json) {
  return PlanCursosSerial(
    planCursoId: json['planCursoId'] as int,
    cursoId: json['cursoId'] as int,
    periodoId: json['periodoId'] as int,
    planEstudiosId: json['planEstudiosId'] as int,
  );
}

Map<String, dynamic> _$PlanCursosSerialToJson(PlanCursosSerial instance) =>
    <String, dynamic>{
      'planCursoId': instance.planCursoId,
      'cursoId': instance.cursoId,
      'periodoId': instance.periodoId,
      'planEstudiosId': instance.planEstudiosId,
    };

PlanEstudiosSerial _$PlanEstudiosSerialFromJson(Map<String, dynamic> json) {
  return PlanEstudiosSerial(
    planEstudiosId: json['planEstudiosId'] as int,
    programaEduId: json['programaEduId'] as int,
    nombrePlan: json['nombrePlan'] as String,
    alias: json['alias'] as String,
    estadoId: json['estadoId'] as int,
    nroResolucion: json['nroResolucion'] as String,
    fechaResolucion: json['fechaResolucion'] as String,
  );
}

Map<String, dynamic> _$PlanEstudiosSerialToJson(PlanEstudiosSerial instance) =>
    <String, dynamic>{
      'planEstudiosId': instance.planEstudiosId,
      'programaEduId': instance.programaEduId,
      'nombrePlan': instance.nombrePlan,
      'alias': instance.alias,
      'estadoId': instance.estadoId,
      'nroResolucion': instance.nroResolucion,
      'fechaResolucion': instance.fechaResolucion,
    };

ProgramasEducativoSerial _$ProgramasEducativoSerialFromJson(
    Map<String, dynamic> json) {
  return ProgramasEducativoSerial(
    programaEduId: json['programaEduId'] as int,
    nombre: json['nombre'] as String,
    nroCiclos: json['nroCiclos'] as String,
    nivelAcadId: json['nivelAcadId'] as int,
    tipoEvaluacionId: json['tipoEvaluacionId'] as int,
    estadoId: json['estadoId'] as int,
    entidadId: json['entidadId'] as int,
    tipoInformeSiagieId: json['tipoInformeSiagieId'] as int,
    tipoProgramaId: json['tipoProgramaId'] as int,
    tipoMatriculaId: json['tipoMatriculaId'] as int,
  );
}

Map<String, dynamic> _$ProgramasEducativoSerialToJson(
        ProgramasEducativoSerial instance) =>
    <String, dynamic>{
      'programaEduId': instance.programaEduId,
      'nombre': instance.nombre,
      'nroCiclos': instance.nroCiclos,
      'nivelAcadId': instance.nivelAcadId,
      'tipoEvaluacionId': instance.tipoEvaluacionId,
      'estadoId': instance.estadoId,
      'entidadId': instance.entidadId,
      'tipoInformeSiagieId': instance.tipoInformeSiagieId,
      'tipoProgramaId': instance.tipoProgramaId,
      'tipoMatriculaId': instance.tipoMatriculaId,
    };

SeccionSeraializable _$SeccionSeraializableFromJson(Map<String, dynamic> json) {
  return SeccionSeraializable(
    json['seccionId'] as int,
    json['nombre'] as String,
    json['descripcion'] as String,
    json['estado'] as bool,
    json['georeferenciaId'] as int,
  );
}

Map<String, dynamic> _$SeccionSeraializableToJson(
        SeccionSeraializable instance) =>
    <String, dynamic>{
      'seccionId': instance.seccionId,
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'estado': instance.estado,
      'georeferenciaId': instance.georeferenciaId,
    };

SilaboEventoSerial _$SilaboEventoSerialFromJson(Map<String, dynamic> json) {
  return SilaboEventoSerial(
    silaboEventoId: json['silaboEventoId'] as int,
    titulo: json['titulo'] as String,
    descripcionGeneral: json['descripcionGeneral'] as String,
    planCursoId: json['planCursoId'] as int,
    entidadId: json['entidadId'] as int,
    docenteId: json['docenteId'] as int,
    seccionId: json['seccionId'] as int,
    fechaInicio: json['fechaInicio'] as String,
    fechaFin: json['fechaFin'] as String,
    estadoId: json['estadoId'] as int,
    anioAcademicoId: json['anioAcademicoId'] as int,
    georeferenciaId: json['georeferenciaId'] as int,
    silaboBaseId: json['silaboBaseId'] as int,
    cargaCursoId: json['cargaCursoId'] as int,
    parametroDisenioId: json['parametroDisenioId'] as int,
  );
}

Map<String, dynamic> _$SilaboEventoSerialToJson(SilaboEventoSerial instance) =>
    <String, dynamic>{
      'silaboEventoId': instance.silaboEventoId,
      'titulo': instance.titulo,
      'descripcionGeneral': instance.descripcionGeneral,
      'planCursoId': instance.planCursoId,
      'entidadId': instance.entidadId,
      'docenteId': instance.docenteId,
      'seccionId': instance.seccionId,
      'fechaInicio': instance.fechaInicio,
      'fechaFin': instance.fechaFin,
      'estadoId': instance.estadoId,
      'anioAcademicoId': instance.anioAcademicoId,
      'georeferenciaId': instance.georeferenciaId,
      'silaboBaseId': instance.silaboBaseId,
      'cargaCursoId': instance.cargaCursoId,
      'parametroDisenioId': instance.parametroDisenioId,
    };

CalendarioPeriodoSerial _$CalendarioPeriodoSerialFromJson(
    Map<String, dynamic> json) {
  return CalendarioPeriodoSerial(
    calendarioPeriodoId: json['calendarioPeriodoId'] as int,
    fechaInicio: json['fechaInicio'] as int,
    fechaFin: json['fechaFin'] as int,
    calendarioAcademicoId: json['calendarioAcademicoId'] as int,
    tipoId: json['tipoId'] as int,
    estadoId: json['estadoId'] as int,
    diazPlazo: json['diazPlazo'] as int,
  );
}

Map<String, dynamic> _$CalendarioPeriodoSerialToJson(
        CalendarioPeriodoSerial instance) =>
    <String, dynamic>{
      'calendarioPeriodoId': instance.calendarioPeriodoId,
      'fechaInicio': instance.fechaInicio,
      'fechaFin': instance.fechaFin,
      'calendarioAcademicoId': instance.calendarioAcademicoId,
      'tipoId': instance.tipoId,
      'estadoId': instance.estadoId,
      'diazPlazo': instance.diazPlazo,
    };

CalendarioPeriodoDetalleSerial _$CalendarioPeriodoDetalleSerialFromJson(
    Map<String, dynamic> json) {
  return CalendarioPeriodoDetalleSerial(
    calendarioPeriodoDetId: json['calendarioPeriodoDetId'] as int,
    calendarioPeriodoId: json['calendarioPeriodoId'] as int,
    descripcion: json['descripcion'] as String,
    fechaInicio: json['fechaInicio'] as int,
    fechaFin: json['fechaFin'] as int,
    diasPlazo: json['diasPlazo'] as int,
    tipoId: json['tipoId'] as int,
  );
}

Map<String, dynamic> _$CalendarioPeriodoDetalleSerialToJson(
        CalendarioPeriodoDetalleSerial instance) =>
    <String, dynamic>{
      'calendarioPeriodoDetId': instance.calendarioPeriodoDetId,
      'calendarioPeriodoId': instance.calendarioPeriodoId,
      'descripcion': instance.descripcion,
      'fechaInicio': instance.fechaInicio,
      'fechaFin': instance.fechaFin,
      'diasPlazo': instance.diasPlazo,
      'tipoId': instance.tipoId,
    };

CargaCursoCalendarioPeriodoSerial _$CargaCursoCalendarioPeriodoSerialFromJson(
    Map<String, dynamic> json) {
  return CargaCursoCalendarioPeriodoSerial(
    cargaCursoCalendarioPeriodoId: json['cargaCursoCalendarioPeriodoId'] as int,
    cargaCursoId: json['cargaCursoId'] as int,
    calendarioPeriodoId: json['calendarioPeriodoId'] as int,
    estadoId: json['estadoId'] as int,
    fechaInicio: json['fechaInicio'] as int,
    fechaFin: json['fechaFin'] as int,
    horaInicio: json['horaInicio'] as String,
    horaFin: json['horaFin'] as String,
    calendarioPeriodoDetId: json['calendarioPeriodoDetId'] as int,
    tipoId: json['tipoId'] as int,
    planCursoId: json['planCursoId'] as int,
    anioAcademicoId: json['anioAcademicoId'] as int,
    cargaAcademicaid: json['cargaAcademicaid'] as int,
    paths: json['paths'] as String,
  );
}

Map<String, dynamic> _$CargaCursoCalendarioPeriodoSerialToJson(
        CargaCursoCalendarioPeriodoSerial instance) =>
    <String, dynamic>{
      'cargaCursoCalendarioPeriodoId': instance.cargaCursoCalendarioPeriodoId,
      'cargaCursoId': instance.cargaCursoId,
      'calendarioPeriodoId': instance.calendarioPeriodoId,
      'estadoId': instance.estadoId,
      'fechaInicio': instance.fechaInicio,
      'fechaFin': instance.fechaFin,
      'horaInicio': instance.horaInicio,
      'horaFin': instance.horaFin,
      'calendarioPeriodoDetId': instance.calendarioPeriodoDetId,
      'tipoId': instance.tipoId,
      'planCursoId': instance.planCursoId,
      'anioAcademicoId': instance.anioAcademicoId,
      'cargaAcademicaid': instance.cargaAcademicaid,
      'paths': instance.paths,
    };

TiposSerial _$TiposSerialFromJson(Map<String, dynamic> json) {
  return TiposSerial(
    tipoId: json['tipoId'] as int,
    objeto: json['objeto'] as String,
    concepto: json['concepto'] as String,
    nombre: json['nombre'] as String,
    codigo: json['codigo'] as String,
    parentId: json['parentId'] as int,
  );
}

Map<String, dynamic> _$TiposSerialToJson(TiposSerial instance) =>
    <String, dynamic>{
      'tipoId': instance.tipoId,
      'objeto': instance.objeto,
      'concepto': instance.concepto,
      'nombre': instance.nombre,
      'codigo': instance.codigo,
      'parentId': instance.parentId,
    };

CalendarioAcademicoSerial _$CalendarioAcademicoSerialFromJson(
    Map<String, dynamic> json) {
  return CalendarioAcademicoSerial(
    calendarioAcademicoId: json['calendarioAcademicoId'] as int,
    programaEduId: json['programaEduId'] as int,
    idAnioAcademico: json['idAnioAcademico'] as int,
    estadoId: json['estadoId'] as int,
  );
}

Map<String, dynamic> _$CalendarioAcademicoSerialToJson(
        CalendarioAcademicoSerial instance) =>
    <String, dynamic>{
      'calendarioAcademicoId': instance.calendarioAcademicoId,
      'programaEduId': instance.programaEduId,
      'idAnioAcademico': instance.idAnioAcademico,
      'estadoId': instance.estadoId,
    };

HoraSerial _$HoraSerialFromJson(Map<String, dynamic> json) {
  return HoraSerial(
    idHora: json['idHora'] as int,
    horaInicio: json['horaInicio'] as String,
    horaFin: json['horaFin'] as String,
  );
}

Map<String, dynamic> _$HoraSerialToJson(HoraSerial instance) =>
    <String, dynamic>{
      'idHora': instance.idHora,
      'horaInicio': instance.horaInicio,
      'horaFin': instance.horaFin,
    };

HorarioProgramaSerial _$HorarioProgramaSerialFromJson(
    Map<String, dynamic> json) {
  return HorarioProgramaSerial(
    idHorarioPrograma: json['idHorarioPrograma'] as int,
    idHorario: json['idHorario'] as int,
    activo: json['activo'] as int,
    idProgramaEducativo: json['idProgramaEducativo'] as int,
    idAnioAcademico: json['idAnioAcademico'] as int,
    idUsuarioActualizacion: json['idUsuarioActualizacion'] as int,
    idUsuarioCreacion: json['idUsuarioCreacion'] as int,
    fechaCreacion: json['fechaCreacion'] as String,
    fechaActualizacion: json['fechaActualizacion'] as String,
  );
}

Map<String, dynamic> _$HorarioProgramaSerialToJson(
        HorarioProgramaSerial instance) =>
    <String, dynamic>{
      'idHorarioPrograma': instance.idHorarioPrograma,
      'idHorario': instance.idHorario,
      'activo': instance.activo,
      'idProgramaEducativo': instance.idProgramaEducativo,
      'idAnioAcademico': instance.idAnioAcademico,
      'idUsuarioActualizacion': instance.idUsuarioActualizacion,
      'idUsuarioCreacion': instance.idUsuarioCreacion,
      'fechaCreacion': instance.fechaCreacion,
      'fechaActualizacion': instance.fechaActualizacion,
    };

HorarioHoraSerial _$HorarioHoraSerialFromJson(Map<String, dynamic> json) {
  return HorarioHoraSerial(
    idHorarioHora: json['idHorarioHora'] as int,
    horaId: json['horaId'] as int,
    detalleHoraId: json['detalleHoraId'] as int,
  );
}

Map<String, dynamic> _$HorarioHoraSerialToJson(HorarioHoraSerial instance) =>
    <String, dynamic>{
      'idHorarioHora': instance.idHorarioHora,
      'horaId': instance.horaId,
      'detalleHoraId': instance.detalleHoraId,
    };

DetalleHorarioSerial _$DetalleHorarioSerialFromJson(Map<String, dynamic> json) {
  return DetalleHorarioSerial(
    idDetalleHorario: json['idDetalleHorario'] as int,
    idTipoHora: json['idTipoHora'] as int,
    idTipoTurno: json['idTipoTurno'] as int,
    horaInicio: json['horaInicio'] as String,
    horaFin: json['horaFin'] as String,
    idHorarioDia: json['idHorarioDia'] as int,
    timeChange: json['timeChange'] as int,
  );
}

Map<String, dynamic> _$DetalleHorarioSerialToJson(
        DetalleHorarioSerial instance) =>
    <String, dynamic>{
      'idDetalleHorario': instance.idDetalleHorario,
      'idTipoHora': instance.idTipoHora,
      'idTipoTurno': instance.idTipoTurno,
      'horaInicio': instance.horaInicio,
      'horaFin': instance.horaFin,
      'idHorarioDia': instance.idHorarioDia,
      'timeChange': instance.timeChange,
    };

DiaSerial _$DiaSerialFromJson(Map<String, dynamic> json) {
  return DiaSerial(
    diaId: json['diaId'] as int,
    nombre: json['nombre'] as String,
    estado: json['estado'] as bool,
    alias: json['alias'] as String,
  );
}

Map<String, dynamic> _$DiaSerialToJson(DiaSerial instance) => <String, dynamic>{
      'diaId': instance.diaId,
      'nombre': instance.nombre,
      'estado': instance.estado,
      'alias': instance.alias,
    };

HorarioDiaSerial _$HorarioDiaSerialFromJson(Map<String, dynamic> json) {
  return HorarioDiaSerial(
    idHorarioDia: json['idHorarioDia'] as int,
    idHorario: json['idHorario'] as int,
    idDia: json['idDia'] as int,
  );
}

Map<String, dynamic> _$HorarioDiaSerialToJson(HorarioDiaSerial instance) =>
    <String, dynamic>{
      'idHorarioDia': instance.idHorarioDia,
      'idHorario': instance.idHorario,
      'idDia': instance.idDia,
    };

CursosDetHorarioSerial _$CursosDetHorarioSerialFromJson(
    Map<String, dynamic> json) {
  return CursosDetHorarioSerial(
    idCursosDetHorario: json['idCursosDetHorario'] as int,
    idDetHorario: json['idDetHorario'] as int,
    idCargaCurso: json['idCargaCurso'] as int,
  );
}

Map<String, dynamic> _$CursosDetHorarioSerialToJson(
        CursosDetHorarioSerial instance) =>
    <String, dynamic>{
      'idCursosDetHorario': instance.idCursosDetHorario,
      'idDetHorario': instance.idDetHorario,
      'idCargaCurso': instance.idCargaCurso,
    };

HorarioSerial _$HorarioSerialFromJson(Map<String, dynamic> json) {
  return HorarioSerial(
    idHorario: json['idHorario'] as int,
    nombre: json['nombre'] as String,
    descripcion: json['descripción'] as String,
    fecCreacion: json['fecCreacion'] as String,
    fecActualizacion: json['fecActualizacion'] as String,
    estado: json['estado'] as bool,
    idUsuario: json['idUsuario'] as int,
    entidadId: json['entidadId'] as int,
    georeferenciaId: json['georeferenciaId'] as int,
    organigramaId: json['organigramaId'] as int,
  );
}

Map<String, dynamic> _$HorarioSerialToJson(HorarioSerial instance) =>
    <String, dynamic>{
      'idHorario': instance.idHorario,
      'nombre': instance.nombre,
      'descripción': instance.descripcion,
      'fecCreacion': instance.fecCreacion,
      'fecActualizacion': instance.fecActualizacion,
      'estado': instance.estado,
      'idUsuario': instance.idUsuario,
      'entidadId': instance.entidadId,
      'georeferenciaId': instance.georeferenciaId,
      'organigramaId': instance.organigramaId,
    };

WebConfigsSerial _$WebConfigsSerialFromJson(Map<String, dynamic> json) {
  return WebConfigsSerial(
    json['nombre'] as String,
    json['content'] as String,
  );
}

Map<String, dynamic> _$WebConfigsSerialToJson(WebConfigsSerial instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'content': instance.content,
    };
