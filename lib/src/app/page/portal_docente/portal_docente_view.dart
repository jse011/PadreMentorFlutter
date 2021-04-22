import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/app/page/portal_docente/portal_docente_controller.dart';
import 'package:ss_crmeducativo/src/app/utils/app_theme.dart';
import 'package:ss_crmeducativo/src/app/utils/hex_color.dart';
import 'package:ss_crmeducativo/src/app/widgets/animation_view.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/moor_configuracion_repository.dart';
import 'package:ss_crmeducativo/src/domain/entities/curso_ui.dart';

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
      : super(PortalDocenteController(MoorConfiguracionRepository()));


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
  Widget get view =>  SafeArea(
    child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: height * 0.35,
            pinned: false,
            floating: true,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.chevron_left,
                color: Theme.of(context).primaryColor,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0))
                  ),
                  child: Stack(
                    children: [
                      Image.network(
                        'https://picsum.photos/200',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: width,
                        height: height * 0.35,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                )
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: List<int>.generate(6, (index) => index)
                  .map((index) => Container(
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300],
                alignment: Alignment.center,
                child: Text('$index item'),
              ))
                  .toList(),
            ),
          )
        ],
      ),
    ),
  );

      /*Container(
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
  );*/

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
                  child: Column(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Educacion Incial',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22 + 6 - 6 * topBarOpacity,
                                    letterSpacing: 1.2,
                                    color: AppTheme.darkerText,
                                  ),
                                ),
                              ),
                            ),
                            /*Image.asset(
                              "assets/images/fondo_programa.png",
                              height:  50 + 6 - 6 * topBarOpacity,)*/
                          ],
                        ),
                      )
                    ],
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
          top: AppBar().preferredSize.height +
              MediaQuery.of(context).padding.top +
              0,

        ),
        child: ControlledWidgetBuilder<PortalDocenteController>(
            builder: (context, controller) {


              return  CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          getCuros(),
                          getCuros(),
                          getCuros(),
                          getCuros(),
                          getCuros(),
                          getCuros(),
                          getCuros(),
                          Padding(padding: EdgeInsets.only( bottom: 62 + MediaQuery.of(context).padding.bottom,))
                        ],
                      )
                  ),

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


  Widget getCuros(){
    CursoUi cursoUi = CursoUi();
    cursoUi.colorCurso = "#FF9800";
    cursoUi.colorCurso2 = "#FB8C00";
    cursoUi.colorCurso3 = "#F57C00";
    cursoUi.nombre = "Matematica";
    cursoUi.grado = "5 A";
    cursoUi.seccion = "A";
    cursoUi.salon = "3-2";
    cursoUi.imagenCurso = "https://e.rpp-noticias.io/normal/2020/12/24/165116_1038744.jpg";
    cursoUi.fotoDocente = "https://d25rq8gxcq0p71.cloudfront.net/dictionary-images/324/6ba8858f-1a74-4116-9a96-fb99b2454ce9.jpg";
    cursoUi.nombreDocente = "Jose Arias Orezano";

    return  Padding(
      padding: const EdgeInsets.only(
          left: 16, right: 16, top: 0, bottom: 18),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color:  cursoUi.colorCurso!=null&&cursoUi.colorCurso.isNotEmpty?
          HexColor(cursoUi.colorCurso):AppTheme.nearlyDarkBlue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topRight: Radius.circular(8.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: AppTheme.grey.withOpacity(0.6),
                offset: Offset(1.1, 1.1),
                blurRadius: 10.0),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topRight: Radius.circular(8.0)
              ),
              child: Opacity(
                opacity: 0.6,
                child: cursoUi.imagenCurso!=null?FancyShimmerImage(
                  boxFit: BoxFit.cover,
                  imageUrl: cursoUi.imagenCurso??'',
                  width: MediaQuery.of(context).size.width,
                  errorWidget: Icon(Icons.warning_amber_rounded, color: AppTheme.white, size: 105,),
                ):
                Container(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                                Text(cursoUi.nombre??"", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 28, color: AppTheme.white),),
                                Text((cursoUi.grado??"") + " " + (cursoUi.seccion??"") + " - " + (cursoUi.nivelAcademico??""), style: TextStyle(fontSize: 14, color: AppTheme.white, fontWeight: FontWeight.w700),),
                              ],
                            ),
                          )
                      ),
                      CachedNetworkImage(
                          placeholder: (context, url) => CircularProgressIndicator(),
                          imageUrl: cursoUi.fotoDocente??"",
                          imageBuilder: (context, imageProvider) => Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(color: AppTheme.grey.withOpacity(0.4), offset: const Offset(2.0, 2.0), blurRadius: 6),
                                  ]
                              )
                          )
                      )
                    ],
                  ),
                  Expanded(
                      child: Container(

                      )
                  ),
                  Row(
                    children: [
                      Text(cursoUi.nombreDocente??"", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, color: AppTheme.white)),
                      Expanded(
                        child: Container(),
                      ),
                      Text(cursoUi.salon??"", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, color: AppTheme.white))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}