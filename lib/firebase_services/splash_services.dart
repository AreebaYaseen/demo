

import 'dart:async';

import 'package:demo_project/view/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashServices{
  void isLogin(BuildContext context){
    Timer(Duration(seconds: 5),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())));
  }
}