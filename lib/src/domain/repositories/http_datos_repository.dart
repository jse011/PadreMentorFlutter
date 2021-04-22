abstract class HttpDatosRepository{

  Future<Map<String, dynamic>> getUsuarioExterno(int opcion, String usuario, String password, String correo, String dni);
  Future<Map<String, dynamic>> getUsuario(String urlServidor, int usuarioId);
  Future<Map<String, dynamic>> getDatosInicioDocente(String urlServidorLocal, int usuarioId);
  Future<Map<String, dynamic>> getDatosAnioAcademico(String urlServidorLocal, int empleadoId, int anioAcademicoId);

}