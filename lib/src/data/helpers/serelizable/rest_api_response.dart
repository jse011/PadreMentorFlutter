import 'package:json_annotation/json_annotation.dart';

part 'rest_api_response.g.dart';
/*
Mac OS important
export PATH="$PATH:/Users/edwinrubenpuente/SDKFlutter/flutter/bin"

* One-time code generation
By running flutter pub run build_runner build in the project root, you generate JSON serialization code for your models whenever they are needed. This triggers a one-time build that goes through the source files, picks the relevant ones, and generates the necessary serialization code for them.

While this is convenient, it would be nice if you did not have to run the build manually every time you make changes in your model classes.

Generating code continuously
A watcher makes our source code generation process more convenient. It watches changes in our project files and automatically builds the necessary files when needed. Start the watcher by running flutter pub run build_runner watch in the project root.

It is safe to start the watcher once and leave it running in the background.
* */
@JsonSerializable()
class AdminServiceSerializable {
  int UsuarioId;
  bool Estado;
  int EntidadId;
  int UsuarioExternoId;
  int UsuarioCreadorId;
  int UsuarioAccionId;
  int Opcion;
  int Cantidad;
  String UrlServiceMovil;

  AdminServiceSerializable(
      {this.UsuarioId,
        this.Estado,
        this.EntidadId,
        this.UsuarioExternoId,
        this.UsuarioCreadorId,
        this.UsuarioAccionId,
        this.Opcion,
        this.Cantidad,
        this.UrlServiceMovil});

  factory AdminServiceSerializable.fromJson(Map<String, dynamic> json) => _$AdminServiceSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$AdminServiceSerializableToJson(this);
}
@JsonSerializable()
class EntidadSerializable {

  int entidadId;
  int tipoId;
  int parentId;
  String nombre;
  String ruc;
  String site;
  String telefono;
  String correo;
  String foto;
  int estadoId;

  EntidadSerializable(
      {this.entidadId,
        this.tipoId,
        this.parentId,
        this.nombre,
        this.ruc,
        this.site,
        this.telefono,
        this.correo,
        this.foto,
        this.estadoId});

  factory EntidadSerializable.fromJson(Map<String, dynamic> json) => _$EntidadSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$EntidadSerializableToJson(this);
}

@JsonSerializable()
class GeoreferenciaSerializable {

  int georeferenciaId ;
  String nombre ;
  int entidadId ;
  String alias;
  int estadoId;

  GeoreferenciaSerializable({this.georeferenciaId, this.nombre, this.entidadId, this.alias,
    this.estadoId});

  factory GeoreferenciaSerializable.fromJson(Map<String, dynamic> json) => _$GeoreferenciaSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$GeoreferenciaSerializableToJson(this);
}

@JsonSerializable()
class RolSerializable{
  int rolId;
  String nombre;
  int parentId;
  bool estado;

  RolSerializable({this.rolId, this.nombre, this.parentId, this.estado});


  factory RolSerializable.fromJson(Map<String, dynamic> json) => _$RolSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$RolSerializableToJson(this);
}

@JsonSerializable()
class UsuarioRolGeoreferenciaSerializable{
  int usuarioRolGeoreferenciaId;
  int usuarioId;
  int rolId;
  int geoReferenciaId;
  int entidadId;


  UsuarioRolGeoreferenciaSerializable({this.usuarioRolGeoreferenciaId,
    this.usuarioId, this.rolId, this.geoReferenciaId, this.entidadId});

  factory UsuarioRolGeoreferenciaSerializable.fromJson(Map<String, dynamic> json) => _$UsuarioRolGeoreferenciaSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$UsuarioRolGeoreferenciaSerializableToJson(this);
}

@JsonSerializable()
class PersonaSerial{
  int personaId;
  String nombres;
  String apellidoPaterno;
  String apellidoMaterno;
  String celular;
  String telefono;
  String foto;
  String fechaNac;
  String genero;
  String estadoCivil;
  String numDoc;
  String ocupacion;
  int estadoId;
  String correo;
  String direccion;
  String path;
  String image64; //Solo sirve para guardar un imagen

  PersonaSerial(
      {this.personaId,
        this.nombres,
        this.apellidoPaterno,
        this.apellidoMaterno,
        this.celular,
        this.telefono,
        this.foto,
        this.fechaNac,
        this.genero,
        this.estadoCivil,
        this.numDoc,
        this.ocupacion,
        this.estadoId = 0,
        this.correo,
        this.direccion,
        this.path,
        this.image64});

  factory PersonaSerial.fromJson(Map<String, dynamic> json) => _$PersonaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$PersonaSerialToJson(this);
}
@JsonSerializable()
class EmpleadoSerial{
    int empleadoId;
    int personaId;
    String linkURL;
    bool estado;
    int tipoId;
    String web;


    EmpleadoSerial({this.empleadoId, this.personaId, this.linkURL, this.estado,
      this.tipoId, this.web});

    factory EmpleadoSerial.fromJson(Map<String, dynamic> json) => _$EmpleadoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$EmpleadoSerialToJson(this);
}
@JsonSerializable()
class AnioAcademicoSerial{
  int idAnioAcademico;
  String nombre;
  String fechaInicio;
  String fechaFin;
  String denominacion;
  int georeferenciaId;
  int organigramaId;
  int estadoId;
  int tipoId;

  AnioAcademicoSerial(
  {this.idAnioAcademico,
      this.nombre,
      this.fechaInicio,
      this.fechaFin,
      this.denominacion,
      this.georeferenciaId,
      this.organigramaId,
      this.estadoId,
       this.tipoId});

  factory AnioAcademicoSerial.fromJson(Map<String, dynamic> json) => _$AnioAcademicoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$AnioAcademicoSerialToJson(this);
}
@JsonSerializable()
class ParametroConfiguracionSerial{

  int id;
  String concepto;
  String parametro;
  int entidadId;
  int orden;


  ParametroConfiguracionSerial(
      this.id, this.concepto, this.parametro, this.entidadId, this.orden);

  factory ParametroConfiguracionSerial.fromJson(Map<String, dynamic> json) => _$ParametroConfiguracionSerialFromJson(json);

  Map<String, dynamic> toJson() => _$ParametroConfiguracionSerialToJson(this);
}
@JsonSerializable()
class AulaSerial
{
  int aulaId;
  String descripcion;
  String numero;
  String capacidad;
  int estado;

  AulaSerial(
      {this.aulaId,
      this.descripcion,
      this.numero,
      this.capacidad,
      this.estado});
  factory AulaSerial.fromJson(Map<String, dynamic> json) => _$AulaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$AulaSerialToJson(this);
}
@JsonSerializable()
class CargaAcademicaSerial
{
  int cargaAcademicaId;
  int seccionId;
  int periodoId;
  int aulaId;
  int idPlanEstudio;
  int idPlanEstudioVersion;
  int idAnioAcademico;
  int idEmpleadoTutor;
  int estadoId;
  int idPeriodoAcad;
  int idGrupo;
  int capacidadVacante;
  int capacidadVacanteD;

  CargaAcademicaSerial(
      {this.cargaAcademicaId,
      this.seccionId,
      this.periodoId,
      this.aulaId,
      this.idPlanEstudio,
      this.idPlanEstudioVersion,
      this.idAnioAcademico,
      this.idEmpleadoTutor,
      this.estadoId,
      this.idPeriodoAcad,
      this.idGrupo,
      this.capacidadVacante,
      this.capacidadVacanteD});

  factory CargaAcademicaSerial.fromJson(Map<String, dynamic> json) => _$CargaAcademicaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CargaAcademicaSerialToJson(this);
}
@JsonSerializable()
class CargaCursoDocenteSerial {
  int cargaCursoDocenteId;
  int cargaCursoId;
  int docenteId;
  bool responsable;

  CargaCursoDocenteSerial(
      {this.cargaCursoDocenteId,
      this.cargaCursoId,
      this.docenteId,
      this.responsable});

  factory CargaCursoDocenteSerial.fromJson(Map<String, dynamic> json) => _$CargaCursoDocenteSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CargaCursoDocenteSerialToJson(this);
}
@JsonSerializable()
class CargaCursoDocenteDetSerial
{
  int cargaCursoDocenteId;
  int alumnoId;

  CargaCursoDocenteDetSerial({this.cargaCursoDocenteId, this.alumnoId});

  factory CargaCursoDocenteDetSerial.fromJson(Map<String, dynamic> json) => _$CargaCursoDocenteDetSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CargaCursoDocenteDetSerialToJson(this);
}
@JsonSerializable()
class CursosSerializable {

  int cursoId;
  String nombre;
  int estadoId;
  String descripcion;
  String alias;
  int entidadId;
  int nivelAcadId;
  int tipoCursoId;
  int tipoConceptoId;
  String color;
  String creditos;
  String totalHP;
  String totalHT;
  String notaAprobatoria;
  String sumilla;
  int superId;
  int idServicioLaboratorio;
  int horasLaboratorio;
  bool tipoSubcurso;
  String foto;
  String codigo;

  CursosSerializable(
      {this.cursoId,
        this.nombre,
        this.estadoId,
        this.descripcion,
        this.alias,
        this.entidadId,
        this.nivelAcadId,
        this.tipoCursoId,
        this.tipoConceptoId,
        this.color,
        this.creditos,
        this.totalHP,
        this.totalHT,
        this.notaAprobatoria,
        this.sumilla,
        this.superId,
        this.idServicioLaboratorio,
        this.horasLaboratorio,
        this.tipoSubcurso,
        this.foto,
        this.codigo});

  factory CursosSerializable.fromJson(Map<String, dynamic> json) => _$CursosSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$CursosSerializableToJson(this);
}
@JsonSerializable()
class CargaCursosSerial{

  int cargaCursoId;
  int planCursoId;
  int empleadoId;
  int cargaAcademicaId;
  int complejo;
  int evaluable;
  int idempleado;
  int idTipoHora;
  String descripcion;
  int fechaInicio;//Long
  int fechafin;//Long
  String modo;
  int estado;
  int anioAcademicoId;
  int aulaId;
  int grupoId;
  int idPlanEstudio;
  int idPlanEstudioVersion;
  int CapacidadVacanteP;
  int CapacidadVacanteD;
  String nombreDocente;
  int personaIdDocente;
  String fotoDocente;

  CargaCursosSerial(
      {this.cargaCursoId,
        this.planCursoId,
        this.empleadoId,
        this.cargaAcademicaId,
        this.complejo,
        this.evaluable,
        this.idempleado,
        this.idTipoHora,
        this.descripcion,
        this.fechaInicio,
        this.fechafin,
        this.modo,
        this.estado,
        this.anioAcademicoId,
        this.aulaId,
        this.grupoId,
        this.idPlanEstudio,
        this.idPlanEstudioVersion,
        this.CapacidadVacanteP,
        this.CapacidadVacanteD});

  factory CargaCursosSerial.fromJson(Map<String, dynamic> json) => _$CargaCursosSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CargaCursosSerialToJson(this);
}

@JsonSerializable()
class ParametrosDisenioSerial{

  int parametroDisenioId;
  String objeto;
  String concepto;
  String nombre;
  String path;
  String color1;
  String color2;
  String color3;
  bool estado;

  ParametrosDisenioSerial(
      {this.parametroDisenioId,
        this.objeto,
        this.concepto,
        this.nombre,
        this.path,
        this.color1,
        this.color2,
        this.color3,
        this.estado});

  factory ParametrosDisenioSerial.fromJson(Map<String, dynamic> json) => _$ParametrosDisenioSerialFromJson(json);

  Map<String, dynamic> toJson() => _$ParametrosDisenioSerialToJson(this);
}
@JsonSerializable()
class NivelAcademicoSeraializable{
  int nivelAcadId;
  String nombre;
  bool activo;
  int entidadId;

  NivelAcademicoSeraializable(
      {this.nivelAcadId, this.nombre, this.activo, this.entidadId});

  factory NivelAcademicoSeraializable.fromJson(Map<String, dynamic> json) => _$NivelAcademicoSeraializableFromJson(json);

  Map<String, dynamic> toJson() => _$NivelAcademicoSeraializableToJson(this);
}
@JsonSerializable()
class PeriodosSeraializable {

  int periodoId;
  String nombre;
  int estadoId;
  String alias;
  String fecComienzo;
  String fecTermino;
  int tipoId;
  int superId;
  int geoReferenciaId;
  int organigramaId;
  int entidadId;
  bool activo;
  int cicloId;
  int docenteId;
  String gruponombre;
  int grupoId;
  String nivelAcademico;
  int nivelAcademicoId;
  int tutorId;

  PeriodosSeraializable(
      {this.periodoId,
        this.nombre,
        this.estadoId,
        this.alias,
        this.fecComienzo,
        this.fecTermino,
        this.tipoId,
        this.superId,
        this.geoReferenciaId,
        this.organigramaId,
        this.entidadId,
        this.activo,
        this.cicloId,
        this.docenteId,
        this.gruponombre,
        this.grupoId,
        this.nivelAcademico,
        this.nivelAcademicoId,
        this.tutorId});

  factory PeriodosSeraializable.fromJson(Map<String, dynamic> json) => _$PeriodosSeraializableFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodosSeraializableToJson(this);
}
@JsonSerializable()
class PlanCursosSerial {

  int planCursoId;
  int cursoId;
  int periodoId;
  int planEstudiosId;

  PlanCursosSerial(
      {this.planCursoId, this.cursoId, this.periodoId, this.planEstudiosId});

  factory PlanCursosSerial.fromJson(Map<String, dynamic> json) => _$PlanCursosSerialFromJson(json);

  Map<String, dynamic> toJson() => _$PlanCursosSerialToJson(this);
}
@JsonSerializable()
class PlanEstudiosSerial {

  int planEstudiosId;
  int programaEduId;
  String nombrePlan;
  String alias;
  int estadoId;
  String nroResolucion;
  String fechaResolucion;

  PlanEstudiosSerial({this.planEstudiosId, this.programaEduId, this.nombrePlan,
    this.alias, this.estadoId, this.nroResolucion, this.fechaResolucion});

  factory PlanEstudiosSerial.fromJson(Map<String, dynamic> json) => _$PlanEstudiosSerialFromJson(json);

  Map<String, dynamic> toJson() => _$PlanEstudiosSerialToJson(this);
}
@JsonSerializable()
class ProgramasEducativoSerial {

  int programaEduId;
  String nombre;
  String nroCiclos;
  int nivelAcadId;
  int tipoEvaluacionId;
  int estadoId;
  int entidadId;
  int tipoInformeSiagieId;
  int tipoProgramaId;
  int tipoMatriculaId;

  ProgramasEducativoSerial(
      {this.programaEduId,
        this.nombre,
        this.nroCiclos,
        this.nivelAcadId,
        this.tipoEvaluacionId,
        this.estadoId,
        this.entidadId,
        this.tipoInformeSiagieId,
        this.tipoProgramaId,
        this.tipoMatriculaId});

  factory ProgramasEducativoSerial.fromJson(Map<String, dynamic> json) => _$ProgramasEducativoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$ProgramasEducativoSerialToJson(this);
}
@JsonSerializable()
class SeccionSeraializable {
  int seccionId;
  String nombre;
  String descripcion;
  bool estado;
  int georeferenciaId;

  SeccionSeraializable(this.seccionId, this.nombre, this.descripcion,
      this.estado, this.georeferenciaId);

  factory SeccionSeraializable.fromJson(Map<String, dynamic> json) => _$SeccionSeraializableFromJson(json);

  Map<String, dynamic> toJson() => _$SeccionSeraializableToJson(this);
}
@JsonSerializable()
class SilaboEventoSerial {

  int silaboEventoId;
  String titulo;
  String descripcionGeneral;
  int planCursoId;
  int entidadId;
  int docenteId;
  int seccionId;
  String fechaInicio;
  String fechaFin;
  int estadoId;
  int anioAcademicoId;
  int georeferenciaId;
  int silaboBaseId;
  int cargaCursoId;
  int parametroDisenioId;

  SilaboEventoSerial(
      {this.silaboEventoId,
        this.titulo,
        this.descripcionGeneral,
        this.planCursoId,
        this.entidadId,
        this.docenteId,
        this.seccionId,
        this.fechaInicio,
        this.fechaFin,
        this.estadoId,
        this.anioAcademicoId,
        this.georeferenciaId,
        this.silaboBaseId,
        this.cargaCursoId,
        this.parametroDisenioId});

  factory SilaboEventoSerial.fromJson(Map<String, dynamic> json) => _$SilaboEventoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$SilaboEventoSerialToJson(this);
}
@JsonSerializable()
class CalendarioPeriodoSerial {

  int calendarioPeriodoId;
  int fechaInicio;//long
  int fechaFin;//long
  int calendarioAcademicoId;
  int tipoId;
  int estadoId;
  int diazPlazo;

  CalendarioPeriodoSerial(
      {this.calendarioPeriodoId,
        this.fechaInicio,
        this.fechaFin,
        this.calendarioAcademicoId,
        this.tipoId,
        this.estadoId,
        this.diazPlazo});

  factory CalendarioPeriodoSerial.fromJson(Map<String, dynamic> json) => _$CalendarioPeriodoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarioPeriodoSerialToJson(this);
}
@JsonSerializable()
class CalendarioPeriodoDetalleSerial
{
  int calendarioPeriodoDetId;
  int calendarioPeriodoId;
  String descripcion;
  int fechaInicio;
  int fechaFin;
  int diasPlazo;
  int tipoId;

  CalendarioPeriodoDetalleSerial(
      {this.calendarioPeriodoDetId,
      this.calendarioPeriodoId,
      this.descripcion,
      this.fechaInicio,
      this.fechaFin,
      this.diasPlazo,
      this.tipoId});

  factory CalendarioPeriodoDetalleSerial.fromJson(Map<String, dynamic> json) => _$CalendarioPeriodoDetalleSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarioPeriodoDetalleSerialToJson(this);
}
@JsonSerializable()
class CargaCursoCalendarioPeriodoSerial
{
  int cargaCursoCalendarioPeriodoId;
  int cargaCursoId;
  int calendarioPeriodoId;
  int estadoId;
  int fechaInicio;
  int fechaFin;
  String horaInicio;
  String horaFin;
  int calendarioPeriodoDetId;
  int tipoId;
  int planCursoId;
  int anioAcademicoId;
  int cargaAcademicaid;
  String paths;

  CargaCursoCalendarioPeriodoSerial(
      {this.cargaCursoCalendarioPeriodoId,
      this.cargaCursoId,
      this.calendarioPeriodoId,
      this.estadoId,
      this.fechaInicio,
      this.fechaFin,
      this.horaInicio,
      this.horaFin,
      this.calendarioPeriodoDetId,
      this.tipoId,
      this.planCursoId,
      this.anioAcademicoId,
      this.cargaAcademicaid,
      this.paths});

  factory CargaCursoCalendarioPeriodoSerial.fromJson(Map<String, dynamic> json) => _$CargaCursoCalendarioPeriodoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CargaCursoCalendarioPeriodoSerialToJson(this);
}
@JsonSerializable()
class TiposSerial {

  int tipoId;
  String objeto;
  String concepto;
  String nombre;
  String codigo;
  int parentId;

  TiposSerial({this.tipoId, this.objeto, this.concepto, this.nombre, this.codigo,
    this.parentId});

  factory TiposSerial.fromJson(Map<String, dynamic> json) => _$TiposSerialFromJson(json);

  Map<String, dynamic> toJson() => _$TiposSerialToJson(this);
}
@JsonSerializable()
class CalendarioAcademicoSerial
{
  int calendarioAcademicoId;
  int programaEduId;
  int idAnioAcademico;
  int estadoId;

  CalendarioAcademicoSerial(
      {this.calendarioAcademicoId,
      this.programaEduId,
      this.idAnioAcademico,
      this.estadoId});


  factory CalendarioAcademicoSerial.fromJson(Map<String, dynamic> json) => _$CalendarioAcademicoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarioAcademicoSerialToJson(this);
}

@JsonSerializable()
class HoraSerial
{
  int idHora;
  String horaInicio;
  String horaFin;

  HoraSerial({this.idHora, this.horaInicio, this.horaFin});

  factory HoraSerial.fromJson(Map<String, dynamic> json) => _$HoraSerialFromJson(json);

  Map<String, dynamic> toJson() => _$HoraSerialToJson(this);
}
@JsonSerializable()
class HorarioProgramaSerial
{
  int idHorarioPrograma;
  int idHorario;
  int activo;
  int idProgramaEducativo;
  int idAnioAcademico;
  int idUsuarioActualizacion;
  int idUsuarioCreacion;
  String fechaCreacion;
  String fechaActualizacion;

  HorarioProgramaSerial(
      {this.idHorarioPrograma,
      this.idHorario,
      this.activo,
      this.idProgramaEducativo,
      this.idAnioAcademico,
      this.idUsuarioActualizacion,
      this.idUsuarioCreacion,
      this.fechaCreacion,
      this.fechaActualizacion});

  factory HorarioProgramaSerial.fromJson(Map<String, dynamic> json) => _$HorarioProgramaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$HorarioProgramaSerialToJson(this);
}
@JsonSerializable()
class HorarioHoraSerial
{
  int idHorarioHora;
  int horaId;
  int detalleHoraId;

  HorarioHoraSerial({this.idHorarioHora, this.horaId, this.detalleHoraId});
  factory HorarioHoraSerial.fromJson(Map<String, dynamic> json) => _$HorarioHoraSerialFromJson(json);

  Map<String, dynamic> toJson() => _$HorarioHoraSerialToJson(this);
}
@JsonSerializable()
class DetalleHorarioSerial
{
  int idDetalleHorario;
  int idTipoHora;
  int idTipoTurno;
  String horaInicio;
  String horaFin;
  int idHorarioDia;
  int timeChange;

  DetalleHorarioSerial(
      {this.idDetalleHorario,
      this.idTipoHora,
      this.idTipoTurno,
      this.horaInicio,
      this.horaFin,
      this.idHorarioDia,
      this.timeChange});
  factory DetalleHorarioSerial.fromJson(Map<String, dynamic> json) => _$DetalleHorarioSerialFromJson(json);

  Map<String, dynamic> toJson() => _$DetalleHorarioSerialToJson(this);
}
@JsonSerializable()
class DiaSerial
{
  int diaId;
  String nombre;
  bool estado;
  String alias;

  DiaSerial({this.diaId, this.nombre, this.estado, this.alias});

  factory DiaSerial.fromJson(Map<String, dynamic> json) => _$DiaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$DiaSerialToJson(this);
}
@JsonSerializable()
class HorarioDiaSerial
{
  int idHorarioDia;
  int idHorario;
  int idDia;

  HorarioDiaSerial({this.idHorarioDia, this.idHorario, this.idDia});

  factory HorarioDiaSerial.fromJson(Map<String, dynamic> json) => _$HorarioDiaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$HorarioDiaSerialToJson(this);
}
@JsonSerializable()
class CursosDetHorarioSerial
{
  int idCursosDetHorario;
  int idDetHorario;
  int idCargaCurso;

  CursosDetHorarioSerial(
      {this.idCursosDetHorario, this.idDetHorario, this.idCargaCurso});

  factory CursosDetHorarioSerial.fromJson(Map<String, dynamic> json) => _$CursosDetHorarioSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CursosDetHorarioSerialToJson(this);
}
@JsonSerializable()
class HorarioSerial
{
  int idHorario;
  String nombre;
  @JsonKey(name: 'descripción')
  final String descripcion;
  String fecCreacion;
  String fecActualizacion;
  bool estado;
  int idUsuario;
  int entidadId;
  int georeferenciaId;
  int organigramaId;

  HorarioSerial(
      {this.idHorario,
      this.nombre,
      this.descripcion,
      this.fecCreacion,
      this.fecActualizacion,
      this.estado,
      this.idUsuario,
      this.entidadId,
      this.georeferenciaId,
      this.organigramaId});

  factory HorarioSerial.fromJson(Map<String, dynamic> json) => _$HorarioSerialFromJson(json);

  Map<String, dynamic> toJson() => _$HorarioSerialToJson(this);
}
@JsonSerializable()
class WebConfigsSerial {
  String nombre;
  String content;

  WebConfigsSerial(this.nombre, this.content);

  factory WebConfigsSerial.fromJson(Map<String, dynamic> json) => _$WebConfigsSerialFromJson(json);

  Map<String, dynamic> toJson() => _$WebConfigsSerialToJson(this);
}