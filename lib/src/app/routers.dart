import 'package:flutter/cupertino.dart';
import 'package:ss_crmeducativo/src/app/page/curso/curso_view.dart';
import 'package:ss_crmeducativo/src/app/page/home/home_view.dart';
import 'package:ss_crmeducativo/src/app/page/login/login_view.dart';
class AppRouter {
  AppRouter._();

  static final String HOME = '/home';
  static final String LOGIN = '/login';
  static final String CURSO = '/Curso';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    LOGIN: (BuildContext context) => LoginView(),
    HOME: (BuildContext context) => HomeView(),
    CURSO:(BuildContext context) => CursoView(),
  };

  static Route createRouteHomeRemoveAll(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        HOME, (Route<dynamic> route) => false);
    //Navigator.of(context).pushReplacementNamed('/home');
    //Navigator.of(context).pushReplacement();


    /*return new MaterialPageRoute(
      builder: (BuildContext context) => new LoginView(),
    );*/
  }

  static Route createRouteLogin(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        LOGIN, (Route<dynamic> route) => false);
    //Navigator.of(context).pushReplacementNamed('/login');
    //Navigator.of(context).pushReplacement();


    /*return new MaterialPageRoute(
      builder: (BuildContext context) => new LoginView(),
    );*/
  }


  static Route createRouteCursosRouter(BuildContext context) {
    Navigator.pushNamed(context, CURSO);
  }

}



