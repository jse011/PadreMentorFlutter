import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/domain/repositories/configuracion_repository.dart';
import 'package:ss_crmeducativo/src/domain/repositories/http_datos_repository.dart';
import 'package:ss_crmeducativo/src/domain/usecase/get_usuario.dart';
import 'package:ss_crmeducativo/src/domain/usecase/validar_usuario.dart';

class HomePresenter extends Presenter{
  Function getUserOnNext;
  Function getUserOnComplete;
  Function getUserOnError;
  GetSessionUsuarioCase getSessionUsuario;
  Function validarUsuarioOnError, validarUsuarioOnComplete;
  ValidarUsuario _validarUsuario;
  Function cerrarCesionOnError, cerrarCesionOnComplete;

  HomePresenter(ConfiguracionRepository configuracionRepo, HttpDatosRepository httpDatosRepo)
      :  _validarUsuario = ValidarUsuario(configuracionRepo), getSessionUsuario = new GetSessionUsuarioCase(configuracionRepo);

  @override
  void dispose() {
    getSessionUsuario.dispose();
    _validarUsuario.dispose();
  }


  void validarUsuario(){
    _validarUsuario.execute(_ValidarUsuarioUseCase(this), ValidarUsuarioCaseParams());
  }

  void getUserSession() {
    getSessionUsuario.execute(_GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());
  }


}

class _ValidarUsuarioUseCase extends Observer<ValidarUsuarioCaseResponse>{
  final HomePresenter presenter;

  _ValidarUsuarioUseCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.validarUsuarioOnComplete != null);
    presenter.validarUsuarioOnComplete();
  }

  @override
  void onError(e) {
    print("HomeView Error");
    assert(presenter.validarUsuarioOnError != null);
    presenter.validarUsuarioOnError(e);
  }

  @override
  void onNext(ValidarUsuarioCaseResponse response) {

  }

}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final HomePresenter presenter;

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
