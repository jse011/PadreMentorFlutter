import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:ss_crmeducativo/src/app/page/portal_docente/portal_docente_controller.dart';
import 'package:ss_crmeducativo/src/app/utils/app_theme.dart';
import 'package:ss_crmeducativo/src/app/widgets/animation_view.dart';
import 'package:ss_crmeducativo/src/data/repositories/moor/moor_configuracion_repository.dart';

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
  Widget get view => Container(
    color: AppTheme.background,
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          getMainListViewUI(),
          getAppBarUI(),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          )
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
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).padding.top,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 58,
                            top: 16 - 8.0 * topBarOpacity,
                            bottom: 12 - 8.0 * topBarOpacity),
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Educación Primaria",
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            style: TextStyle(
                                              fontFamily: AppTheme.fontGotham,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20 + 10 - 10 * topBarOpacity,
                                              letterSpacing: 1.2,
                                              color: AppTheme.colorPrimary,
                                            )),
                                        Text("2021 >",
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: AppTheme.fontGotham,
                                              fontSize: 10 + 6 - 6 * topBarOpacity,
                                              letterSpacing: 1.2,
                                              color: AppTheme.grey,
                                            ))
                                      ],
                                    ),
                                  ),
                              ),
                              Image.asset(
                                "assets/images/fondo_programa.png",
                                height:  120 + 20 - 60 * topBarOpacity,)
                            ],
                          )
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
  int countView = 11;
  Widget getMainListViewUI() {
    return Container(
        padding: EdgeInsets.only(
          top: AppBar().preferredSize.height +
              MediaQuery.of(context).padding.top +
              0,
          bottom: 62 + MediaQuery.of(context).padding.bottom,
        ),
        child: ControlledWidgetBuilder<PortalDocenteController>(
            builder: (context, controller) {

              return  CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Padding(padding: EdgeInsets.only(top: 95)),
                          AnimationView(
                            animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                parent: widget.animationController,
                                curve:
                                Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                            animationController: widget.animationController,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                              height: 200,
                            ),
                          ),
                          AnimationView(
                            animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                parent: widget.animationController,
                                curve:
                                Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                            animationController: widget.animationController,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                              height: 200,
                            ),
                          ),
                          AnimationView(
                            animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                parent: widget.animationController,
                                curve:
                                Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                            animationController: widget.animationController,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                              height: 200,
                            ),
                          ),
                          AnimationView(
                            animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                parent: widget.animationController,
                                curve:
                                Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                            animationController: widget.animationController,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.red,
                              height: 200,
                            ),
                          ),
                        ],
                      )
                  ),
                  //https://www.flaticon.es/packs/online-learning-192?k=1611187904419
                  SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Container(
                            height: 100,
                          )

                        ],
                      )
                  ),
                ],
              );
            })
    );

  }

}