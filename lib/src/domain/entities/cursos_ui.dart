class CursosUi{
  int cargaCursoId;
  int cargaAcademicaId;
  String nombreCurso;
  String gradoSeccion;
  String nroSalon;
  int silaboEventoId;
  String color1;
  String color2;
  String color3;
  String banner;
  EstadoSilabo estadoSilabo;
  int cantidadPersonas;
  bool tutor;

}


enum EstadoSilabo{
  NO_AUTORIZADO,//creado
  AUTORIZADO,
  SIN_SILABO
}