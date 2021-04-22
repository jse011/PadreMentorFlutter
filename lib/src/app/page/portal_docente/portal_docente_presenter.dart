import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/domain/repositories/configuracion_repository.dart';
import 'package:ss_crmeducativo/src/domain/usecase/get_usuario.dart';

class PortalDocentePresenter extends Presenter{
  Function getUserOnNext, getUserOnComplete, getUserOnError;
  GetSessionUsuarioCase _getSessionUsuario;

  PortalDocentePresenter(ConfiguracionRepository configuracionRepo)
      : this._getSessionUsuario = new GetSessionUsuarioCase(configuracionRepo);

  @override
  void dispose() {
    _getSessionUsuario.dispose();
  }

  void getUsuario(){
    _getSessionUsuario.execute(_GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());
  }

}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final PortalDocentePresenter presenter;

  _GetSessionUsuarioCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getUserOnComplete != null);
    presenter.getUserOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getUserOnError != null);
    presenter.getUserOnError(e);
  }

  @override
  void onNext(GetSessionUsuarioCaseResponse response) {
    assert(presenter.getUserOnNext != null);
    presenter.getUserOnNext(response.usurio);
  }

}