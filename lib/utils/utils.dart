import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }


  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          forwardAnimationCurve: Curves.decelerate,
          reverseAnimationCurve: Curves.easeInOut,
          title: "NO INTERNET",
          duration: Duration(seconds: 10),
        )..show(context));
  }


  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
