import 'dart:ffi';

import 'package:ss_crmeducativo/src/domain/entities/anio_acemico_ui.dart';
import 'package:ss_crmeducativo/src/domain/entities/cursos_ui.dart';
import 'package:ss_crmeducativo/src/domain/entities/login_ui.dart';
import 'package:ss_crmeducativo/src/domain/entities/programa_educativo_ui.dart';
import 'package:ss_crmeducativo/src/domain/entities/usuario_ui.dart';

abstract class ConfiguracionRepository{
  Future<bool> validarUsuario();
  Future<void> destroyBaseDatos();
  Future<LoginUi> saveDatosServidor(Map<String, dynamic> datosServidor);
  Future<int> getSessionUsuarioId();
  Future<String> getSessionUsuarioUrlServidor();
  Future<int> getSessionAnioAcademicoId();
  Future<int> getSessionEmpleadoId();
  Future<int> getSessionProgramaEducativoId();
  Future<void> saveUsuario(Map<String, dynamic> datosUsuario);
  Future<bool> validarRol(int usuarioId);
  Future<UsuarioUi> saveDatosIniciales(Map<String, dynamic> datosInicio);
  Future<void> updateUsuarioSuccessData(int usuarioId, int anioAcademicoId);
  Future<void> saveDatosAnioAcademico(Map<String, dynamic> datosAnioAcademico);
  Future<UsuarioUi> getSessionUsuario();
  Future<List<AnioAcademicoUi>> getAnioAcademicoList(int usuarioId);
  Future<void> updateSessionAnioAcademicoId(int anioAcademicoId);
  Future<List<ProgramaEducativoUi>> getListProgramaEducativo(int empleadoId, int anioAcademicoId);
  Future<List<CursosUi>> getListCursos(int empleadoId, int anioAcademicoId, int programaEducativoId);
}
