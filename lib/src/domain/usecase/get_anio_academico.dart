import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/domain/entities/anio_acemico_ui.dart';
import 'package:ss_crmeducativo/src/domain/repositories/configuracion_repository.dart';
import 'package:ss_crmeducativo/src/domain/repositories/http_datos_repository.dart';

class GetAnioAcademico extends UseCase<GetAnioAcademicoResponse, GetAnioAcademicoParams>{
  ConfiguracionRepository repository;

  GetAnioAcademico(this.repository);

  @override
  Future<Stream<GetAnioAcademicoResponse>> buildUseCaseStream(GetAnioAcademicoParams params) async {
    final controller = StreamController<GetAnioAcademicoResponse>();

    try {
      int usuarioId = await repository.getSessionUsuarioId();
      AnioAcademicoUi anioAcademicoUiSelected = null;



      List<AnioAcademicoUi> anioAcademicoUiList = await repository.getAnioAcademicoList(usuarioId);

      for (AnioAcademicoUi anioAcademicoUi in anioAcademicoUiList) {
        if (anioAcademicoUi.toogle) {
          anioAcademicoUiSelected = anioAcademicoUi;
        }
      }

      if(anioAcademicoUiSelected==null)
        for (AnioAcademicoUi anioAcademicoUi in anioAcademicoUiList) {
          if (anioAcademicoUi.vigente) {
              anioAcademicoUiSelected = anioAcademicoUi;
              repository.updateSessionAnioAcademicoId(anioAcademicoUi.anioAcademicoId);
          }
        }

      if(anioAcademicoUiSelected == null && anioAcademicoUiList.isNotEmpty){
        anioAcademicoUiSelected = anioAcademicoUiList[0];
      }
      controller.add(GetAnioAcademicoResponse(anioAcademicoUiList, anioAcademicoUiSelected));
      logger.finest('GetAnioAcademico successful.');
      controller.close();
    } catch (e) {
      logger.severe('GetAnioAcademico unsuccessful: ' + e.toString());
      // Trigger .onError
      controller.addError(e);
    }
    return controller.stream;
  }



}

class GetAnioAcademicoParams {

}

class GetAnioAcademicoResponse {
  List<AnioAcademicoUi> anioAcademicoList;
  AnioAcademicoUi anioAcademicoUi;

  GetAnioAcademicoResponse(this.anioAcademicoList, this.anioAcademicoUi);

}