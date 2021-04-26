import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/domain/repositories/configuracion_repository.dart';
import 'package:ss_crmeducativo/src/domain/usecase/get_anio_academico.dart';

class CursoPresenter extends Presenter {
  GetAnioAcademico _getAnioAcademico;
  Function getAnioAcadOnComplete, getAnioAcadOnError;

  CursoPresenter(ConfiguracionRepository configuracionRepository)
      : _getAnioAcademico = new GetAnioAcademico(configuracionRepository);

  @override
  void dispose() {
        _getAnioAcademico.dispose();
  }

  void getAnioAcademico(){
    _getAnioAcademico.execute(_GetSessionUsuarioCase(this), GetAnioAcademicoParams());
  }

}


class _GetSessionUsuarioCase extends Observer<GetAnioAcademicoResponse>{
  final CursoPresenter presenter;

  _GetSessionUsuarioCase(this.presenter);

  @override
  void onComplete() {

  }

  @override
  void onError(e) {
    assert(presenter.getAnioAcadOnError != null);
    presenter.getAnioAcadOnError(e);
  }

  @override
  void onNext(GetAnioAcademicoResponse response) {
    assert(presenter.getAnioAcadOnComplete != null);
    presenter.getAnioAcadOnComplete(response.anioAcademicoList, response.anioAcademicoUi);
  }

}
