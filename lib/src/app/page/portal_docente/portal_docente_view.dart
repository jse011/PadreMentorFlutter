import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ss_crmeducativo/src/app/page/portal_docente/portal_docente_controller.dart';
import 'package:ss_crmeducativo/src/app/routers.dart';
import 'package:ss_crmeducativo/src/app/utils/app_theme.dart';
import 'package:ss_crmeducativo/src/app/utils/hex_color.dart';
import 'package:ss_crmeducativo/src/app/widgets/animation_view.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/moor_configuracion_repository.dart';
import 'package:ss_crmeducativo/src/device/repositories/http/device_http_datos_repository.dart';
import 'package:ss_crmeducativo/src/domain/entities/cursos_ui.dart';
import 'package:ss_crmeducativo/src/domain/entities/programa_educativo_ui.dart';

import 'portal_docente_controller.dart';

class PortalDocenteView extends View{
  final AnimationController animationController;

  PortalDocenteView({this.animationController});

  @override
  _PortalDocenteViewState createState() => _PortalDocenteViewState();

}

class _PortalDocenteViewState extends ViewState<PortalDocenteView, PortalDocenteController>{
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  Animation<double> topBarAnimation;

  _PortalDocenteViewState()
      : super(PortalDocenteController(MoorConfiguracionRepository(), DeviceHttpDatosRepositorio()));


  @override
  void initState() {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: widget.animationController,
            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });

    Future.delayed(const Duration(milliseconds: 700), () {
// Here you can write your code
      setState(() {
        widget.animationController.forward();
      });

    });
    super.initState();
  }


  @override
  Widget get view => Container(
    color: AppTheme.background,
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          getMainListViewUI(),
          getAppBarUI(),

        ],
      ),
    ),
  );

  Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: widget.animationController,
          builder: (BuildContext context, Widget child) {
            return FadeTransition(
              opacity: topBarAnimation,
              child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 30 * (1.0 - topBarAnimation.value), 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.white.withOpacity(topBarOpacity),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: AppTheme.grey
                              .withOpacity(0.4 * topBarOpacity),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: ControlledWidgetBuilder<PortalDocenteController>(
                      builder: (context, controller) {
                        return Column(
                          children: <Widget>[
                            SizedBox(
                              height: MediaQuery.of(context).padding.top,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 48,
                                  right: 16,
                                  top: 16 - 8.0 * topBarOpacity,
                                  bottom: 12 - 8.0 * topBarOpacity),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: ()=> showDialogButtom(controller),
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 8, top: 10),
                                      child: Text(controller.programaEducativoUi!=null?controller.programaEducativoUi.nombrePrograma:"",
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontFamily: AppTheme.fontTTNorms,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22 + 6 - 6 * topBarOpacity,
                                            color: HexColor("#35377A").withOpacity(topBarOpacity),
                                          )
                                      ),
                                    ),
                                  ),
                                  controller.programaEducativoUi!=null?
                                  InkWell(
                                    onTap: ()=>showDialogButtom(controller),
                                    child: Icon(Icons.keyboard_arrow_down_rounded,
                                      color: HexColor("#35377A").withOpacity(topBarOpacity),
                                      size: 28 + 4 - 4 * topBarOpacity,)):
                                  Container()
                                ],
                              ),
                            )
                          ],
                        );
                      }
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }

  List<int> list = [1,2,3,4,5];
  int countView = 11;
  Widget getMainListViewUI() {
    return Container(
        padding: EdgeInsets.only(
          /*top: AppBar().preferredSize.height +
              MediaQuery.of(context).padding.top +
              0,*/
            top: AppBar().preferredSize.height - 10
        ),
        child: ControlledWidgetBuilder<PortalDocenteController>(
            builder: (context, controller) {
              return Stack(
                children: [
                  CustomScrollView(
                    controller: scrollController,
                    slivers: <Widget>[
                      SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              Container(
                                //height: 120 + 40 - 40 * topBarOpacity,
                                //margin: EdgeInsets.only(left: 24, top: AppBar().preferredSize.height-8),
                                  margin: EdgeInsets.only(left: 24, right: 24),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("A??o Acad. " + (controller.anioAcademicoUi!=null?controller.anioAcademicoUi.nombre: ""),
                                                    textAlign: TextAlign.left,
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 3,
                                                    style: TextStyle(
                                                      fontFamily: AppTheme.fontTTNormsMedium,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 16 + 6 - 6 * topBarOpacity,
                                                      //letterSpacing: 1.2,
                                                      color: AppTheme.black,)
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 18, left: 24),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    onTap: ()=>showDialogButtom(controller),
                                                    child: Text(controller.programaEducativoUi!=null?controller.programaEducativoUi.nombrePrograma:"",
                                                        textAlign: TextAlign.left,
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          fontFamily: AppTheme.fontTTNorms,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 8 + 6 - 6 * topBarOpacity,
                                                          color: HexColor("#35377A"),
                                                        )
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 8),
                                                  ),
                                                  controller.programaEducativoUi!=null?
                                                  InkWell(
                                                    onTap: ()=>showDialogButtom(controller),
                                                    child:  Icon(Icons.keyboard_arrow_down_rounded,
                                                      color: HexColor("#35377A"),
                                                      size: 14 + 4 - 4 * topBarOpacity,),
                                                  ):
                                                  Container()
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 32),
                                            ),
                                          ],
                                        ),
                                      ),
                                      /*Image.asset(
                                    "assets/images/fondo_programa.png",)*/
                                    ],
                                  )
                              ),
                              Padding(padding: EdgeInsets.only(top: 0)),
                            ],
                          )
                      ),
                      SliverList(
                          delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index){
                                CursosUi cursoUi = controller.cursosUiList[index];
                                ProgramaEducativoUi programaEducativoUi = controller.programaEducativoUi;
                                return getCuros(cursoUi, programaEducativoUi);
                              },
                              childCount: controller.cursosUiList.length
                          )
                      ),
                      SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              Padding(padding: EdgeInsets.only( bottom: 62))
                            ],
                          )
                      ),
                    ],
                  ),
                  controller.isLoading ?  Container(child: Center(
                    child: CircularProgressIndicator(),
                  )): Container(),
                ],
              );
            })
    );
    /*ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.only(
        top: AppBar().preferredSize.height +
            MediaQuery.of(context).padding.top +
            24,
        bottom: 62 + MediaQuery.of(context).padding.bottom,
      ),
      itemCount: listViews.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        widget.animationController.forward();
        return listViews[index];
      },
    );*/
  }


  Widget getCuros(CursosUi cursoUi, ProgramaEducativoUi programaEducativoUi){
    return GestureDetector(
      onTap: () {
        AppRouter.createRouteCursosRouter(context);
      },
      child:  Padding(
        padding: const EdgeInsets.only(
            left: 24, right: 24, top: 0, bottom: 24),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
              color:  cursoUi.color1!=null&&cursoUi.color1.isNotEmpty?
              HexColor(cursoUi.color1):AppTheme.nearlyDarkBlue,
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child: Opacity(
                  opacity: 0.6,
                  child: cursoUi.banner!=null?FancyShimmerImage(
                    boxFit: BoxFit.cover,
                    imageUrl: cursoUi.banner??'',
                    width: MediaQuery.of(context).size.width,
                    errorWidget: Icon(Icons.warning_amber_rounded, color: AppTheme.white, size: 105,),
                  ):
                  Container(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top:0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(cursoUi.nombreCurso??"", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18, color: AppTheme.white, fontWeight: FontWeight.w700, fontFamily: AppTheme.fontTTNorms),),
                                  Padding(
                                      padding: EdgeInsets.only(top: 4)
                                  ),
                                  Text(cursoUi.gradoSeccion + " - " + (programaEducativoUi!=null?programaEducativoUi.nivelAcademico:""),
                                    style: TextStyle(fontSize: 16, color: AppTheme.white,  fontFamily: AppTheme.fontTTNorms), ),
                                ],
                              ),
                            )
                        ),

                      ],
                    ),
                    Expanded(
                        child: Container(

                        )
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Text(cursoUi.nroSalon??"", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, color: AppTheme.white, fontWeight: FontWeight.w700,  fontFamily: AppTheme.fontTTNorms))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDialogButtom(PortalDocenteController controller) {
    List<Widget> list = [];
    list.addAll(controller.programaEducativoUiList.map((item) =>  CupertinoActionSheetAction(
      child: Text(item.nombrePrograma),
      onPressed: () {
        controller.clicProgramaEducativo(item);
        Navigator.pop(context);
      },
    )).toList());
    list.add(CupertinoActionSheetAction(
        child: const Text('Cambiar colegio o a??o acad??mico'),
        onPressed: () {
          Navigator.pop(context);
        },
      ));

    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
            title: const Text('Programa educativo'),
            message: const Text('Por favor seleccione un programa educativo de las opciones a continuaci??n'),
            actions: list,
            cancelButton: CupertinoActionSheetAction(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
        );
      },
    );
  }
}