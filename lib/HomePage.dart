// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';

class Homebody extends StatefulWidget {
  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  TextEditingController text = TextEditingController();
  String mytext = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          bverticalpadding,
          sverticalpadding,
          interedtext(),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          buttons(),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          outtext(size)
        ],
      ),
    );
  }

  Container interedtext() {
    return Container(
      decoration: kboxdecoration,
      padding: defaultpadding,
      margin: defaultpadding,
      child: TextField(
        controller: text,
        minLines: 5,
        maxLines: 10,
        // style: TextStyle(color: Colors.black),
        cursorColor: Colors.black,

        decoration: InputDecoration(
            hintText: "Enter your text her",
            hintStyle: TextStyle(
              color: Colors.black12,
              fontSize: 15,
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
            )),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
            ))),
      ),
    );
  }

  Container outtext(Size size) {
    return Container(
        decoration: kboxdecoration,
        padding: defaultpadding,
        margin: defaultpadding,
        constraints: BoxConstraints(
            minHeight: size.height * .25, minWidth: size.width * 0.9),
        child: Text(mytext));
  }

  Container buttons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: showtext,
            //color: Themecolor,
            style: buttonStyle,
            child: Text("Summery"),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          ElevatedButton(
            onPressed: cleartext,
            //color: Themecolor,
            style: buttonStyle,
            child: Text("Reformulate"),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          ElevatedButton(
            onPressed: clearoutput,
            //color: Themecolor,
            style: buttonStyle,

            child: Text("both"),
          ),
        ],
      ),
    );
  }

  showtext() {
    setState(() {
      mytext = text.text;
    });
  }

  cleartext() {
    setState(() {
      mytext = "";
      text.text = "";
    });
  }

  clearoutput() {
    setState(() {
      mytext = "";
    });
  }
}
