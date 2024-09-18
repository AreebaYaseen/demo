
import 'package:demo_project/utils/routes/routes_name.dart';
import 'package:demo_project/view/home_screen.dart';
import 'package:demo_project/view/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/ui/splash_screen.dart';
import '../../view/ui/ui_screen.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=>const LoginScreen());

      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context)=>const SplashScreen());

      case RoutesName.ui:
        return MaterialPageRoute(builder: (BuildContext context)=>const UiScreen());


      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(body: Center(child:  Text('No Route defined'),),);
        });
    }
  }
}

