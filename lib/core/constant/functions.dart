import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Functions{

  static showSnackBar(String text,BuildContext context,Color color){
    final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        width: 200,
        duration: const Duration(milliseconds: 1500),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        backgroundColor: color,
        content: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white
          ),)
    );
    //I do it when we click multiple time to button and he is stack all message
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}