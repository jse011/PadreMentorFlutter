import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/app/page/portal_docente/portal_docente_presenter.dart';
import 'package:ss_crmeducativo/src/domain/entities/usuario_ui.dart';

class PortalDocenteController extends Controller{
  PortalDocentePresenter presenter;
  UsuarioUi _usuarioUi = null;
  UsuarioUi get usuarioUi => _usuarioUi;

  PortalDocenteController(usuarioConfiRepo)
      :this.presenter = PortalDocentePresenter(usuarioConfiRepo)
      , super();

  @override
  void initListeners() {
    presenter.getUserOnNext = (UsuarioUi user) {
      _usuarioUi = user;
      refreshUI(); // Refreshes the UI manually
    };

    presenter.getUserOnComplete = () {

    };
    // On error, show a snackbar, remove the user, and refresh the UI
    presenter.getUserOnError = (e) {
      _usuarioUi = null;
      refreshUI(); // Refreshes the UI manually
    };

  }

  void onInitState() {
    presenter.getUsuario();
    //homePresenter.updateDatos();
    super.onInitState();
  }

}