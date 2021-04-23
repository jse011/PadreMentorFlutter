import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ss_crmeducativo/src/app/page/curso/curso_controller.dart';
import 'package:ss_crmeducativo/src/app/utils/app_theme.dart';
import 'package:ss_crmeducativo/src/app/utils/hex_color.dart';
import 'package:ss_crmeducativo/src/app/widgets/animation_view.dart';
import 'package:ss_crmeducativo/src/domain/entities/curso_ui.dart';

class CursoView extends View{
  @override
  _CursoViewState createState() => _CursoViewState();

}

class _CursoViewState extends ViewState<CursoView, CursoController> with TickerProviderStateMixin{
  Animation<double> topBarAnimation;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  AnimationController animationController;

  _CursoViewState()
      : super(CursoController());

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: animationController,
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
    animationController.reset();

    Future.delayed(const Duration(milliseconds: 500), () {
// Here you can write your code
      setState(() {
        animationController.forward();
      });}

    );
    super.initState();
  }

  @override
  Widget get view =>  Container(
    color: AppTheme.background,
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          getMainTab(),
          getAppBarUI(),
        ],
      ),
    ),
  );
  Widget getAppBarUI() {
    CursoUi cursoUi = curso;
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget child) {
            return FadeTransition(
              opacity: topBarAnimation,
              child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 30 * (1.0 - topBarAnimation.value), 0.0),
                child: Container(
                  padding: EdgeInsets.only(bottom: 8),
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
                            left: 24,
                            right: 24,
                            top: 16 - 8.0 * topBarOpacity,
                            bottom: 12 - 8.0 * topBarOpacity),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {

                              },
                              child: Container(
                                height: 30 + 6 - 6 * topBarOpacity,
                                width: 30 + 6 - 6 * topBarOpacity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        HexColor(cursoUi.colorCurso).withOpacity(0.1),
                                        HexColor(cursoUi.colorCurso).withOpacity(0.1),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderRadius: BorderRadius.circular(8 + 6 - 6 * topBarOpacity),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withAlpha(topBarOpacity.toInt()),
                                      offset: Offset(5, 5),
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Ionicons.ios_arrow_back,
                                    color: HexColor(cursoUi.colorCurso2).withOpacity(0.8),),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text(
                                'Personal Social',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: AppTheme.fontGotham,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18 + 6 - 6 * topBarOpacity,
                                  letterSpacing: 1.2,
                                  color: AppTheme.colorPrimary,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {

                              },
                              child: Container(
                                height: 30 + 6 - 6 * topBarOpacity,
                                width: 30 + 6 - 6 * topBarOpacity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        HexColor(cursoUi.colorCurso).withOpacity(0.1),
                                        HexColor(cursoUi.colorCurso).withOpacity(0.1),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderRadius: BorderRadius.circular(8 + 6 - 6 * topBarOpacity),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withAlpha(topBarOpacity.toInt()),
                                      offset: Offset(5, 5),
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: Icon(Ionicons.ios_more, color: HexColor(cursoUi.colorCurso2).withOpacity(0.8)),
                                ),
                              ),
                            ),
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

  int countView = 4;
  Widget getMainTab() {
    CursoUi cursoUi = curso;
    return Container(
        padding: EdgeInsets.only(
          top: AppBar().preferredSize.height +
              MediaQuery.of(context).padding.top +
              0,
        ),
        child: AnimationView(
          animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              parent: animationController,
              curve:
              Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
          animationController: animationController,
          child:   CustomScrollView(
            controller: scrollController,
            slivers: <Widget>[
              SliverList(
                  delegate: SliverChildListDelegate(
                    [

                      Container(
                        height: 180,
                        margin: EdgeInsets.only(right: 24, left: 24, top: 32),
                        decoration: BoxDecoration(
                          color:  cursoUi.colorCurso!=null&&cursoUi.colorCurso.isNotEmpty?
                          HexColor(cursoUi.colorCurso):AppTheme.nearlyDarkBlue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  bottomLeft: Radius.circular(16.0),
                                  bottomRight: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0)
                              ),
                              child: Opacity(
                                opacity: 0.1,
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
                      Padding(padding: EdgeInsets.only(top: 16)),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),

                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 80,
                        color: Colors.red,
                      ),
                      Padding(padding: EdgeInsets.only( bottom: 62 + MediaQuery.of(context).padding.bottom,))
                    ],
                  )
              ),

            ],
          ),
        )
    );
  }

  CursoUi get curso {
    CursoUi cursoUi = CursoUi();
    cursoUi.colorCurso = "#007bce";
    cursoUi.colorCurso2 = "#0d629c";
    cursoUi.colorCurso3 = "#67c2ff";
    cursoUi.nombre = "Matematica";
    cursoUi.grado = "5 A";
    cursoUi.seccion = "A";
    cursoUi.salon = "3-2";
    cursoUi.imagenCurso = "https://e.rpp-noticias.io/normal/2020/12/24/165116_1038744.jpg";
    cursoUi.fotoDocente = "https://d25rq8gxcq0p71.cloudfront.net/dictionary-images/324/6ba8858f-1a74-4116-9a96-fb99b2454ce9.jpg";
    cursoUi.nombreDocente = "Jose Arias Orezano";
    return cursoUi;
  }

  Widget getCuros(){

    CursoUi cursoUi = curso;
    return GestureDetector(
      onTap: () {

      },
      child:  Padding(
        padding: const EdgeInsets.only(
            left: 24, right: 24, top: 0, bottom: 18),
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            color:  cursoUi.colorCurso!=null&&cursoUi.colorCurso.isNotEmpty?
            HexColor(cursoUi.colorCurso):AppTheme.nearlyDarkBlue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
                topRight: Radius.circular(16.0)),
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
                    topLeft: Radius.circular(16.0),
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)
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
      ),
    );
  }
}