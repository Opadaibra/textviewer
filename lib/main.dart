// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled1/HomePage.dart';
import 'package:untitled1/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Minimize", style: TextStyle(color: Colors.white)),
            centerTitle: true,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(18))),
            backgroundColor: Themecolor,
          ),
          body: Homebody(),
        ));
  }
}
