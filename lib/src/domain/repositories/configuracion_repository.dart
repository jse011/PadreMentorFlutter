import 'dart:ffi';

import 'package:ss_crmeducativo/src/domain/entities/login_ui.dart';
import 'package:ss_crmeducativo/src/domain/entities/usuario_ui.dart';

abstract class ConfiguracionRepository{
  Future<bool> validarUsuario();
  Future<void> destroyBaseDatos();
  Future<LoginUi> saveDatosServidor(Map<String, dynamic> datosServidor);
  Future<int> getSessionUsuarioId();
  Future<String> getSessionUsuarioUrlServidor();
  Future<void> saveUsuario(Map<String, dynamic> datosUsuario);
  Future<bool> validarRol(int usuarioId);
  Future<UsuarioUi> saveDatosIniciales(Map<String, dynamic> datosInicio);
  Future<void> updateUsuarioSuccessData(int usuarioId);
  Future<void> saveDatosAnioAcademico(Map<String, dynamic> datosAnioAcademico);
  Future<UsuarioUi> getSessionUsuario();
}
