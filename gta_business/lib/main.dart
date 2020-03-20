import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 6),
      () { 
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => HomePage(),
          ),
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(20, 26, 50, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Image.asset("images/gta_app.png", width: 150.0,),
      ],),
    );
  }
}