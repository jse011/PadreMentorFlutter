import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/app/page/curso/curso_presenter.dart';
import 'package:ss_crmeducativo/src/domain/entities/anio_acemico_ui.dart';

class CursoController extends Controller{
  CursoPresenter cursoPresenter;
  List<AnioAcademicoUi> _anioAcademicoUiList = [];
  List<AnioAcademicoUi> get anioAcademicoUiList => _anioAcademicoUiList;
  AnioAcademicoUi _anioAcademicoUi = null;
  AnioAcademicoUi get anioAcademicoUi => _anioAcademicoUi;

  CursoController(configuracionRepo):this.cursoPresenter = CursoPresenter(configuracionRepo);

  @override
  void initListeners() {
    cursoPresenter.getAnioAcadOnComplete = (anioAcademicoList, anioAcademicoSelected){
       _anioAcademicoUi = anioAcademicoSelected;
       _anioAcademicoUiList = anioAcademicoUiList;
       refreshUI();
    };

    cursoPresenter.getAnioAcadOnError = (e){
      _anioAcademicoUi = null;
      _anioAcademicoUiList = [];
    };


  }

}