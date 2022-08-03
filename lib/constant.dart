// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color Themecolor = Colors.deepPurple;

var defaultpadding = EdgeInsets.symmetric(horizontal: 20);

var bverticalpadding = Padding(padding: EdgeInsets.symmetric(vertical: 20));
var sverticalpadding = Padding(padding: EdgeInsets.symmetric(vertical: 5));
var mverticalpadding = Padding(padding: EdgeInsets.symmetric(vertical: 20));
ButtonStyle buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Themecolor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      // ignore: prefer_const_constructors
      borderRadius: BorderRadius.only(
        // ignore: prefer_const_constructors
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      side: BorderSide(
        color: Themecolor,
        width: .5,
      ),
    ),
  ),
);
BoxDecoration kboxdecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0, 10),
        blurRadius: 10,
      )
    ]);
