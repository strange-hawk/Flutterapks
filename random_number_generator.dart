//first file
import "package:flutter/material.dart";
import './first_screen.dart';

void main() {
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home: Scaffold(
          appBar: AppBar(
            title:
            Center(child: Text("My first App Screen",)),
          ),
          body: FirstScreen()
        )
    );
  }
}



//second file
import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(  generateluckynumber(),
//        child: Text("Your lucky number is ${generateluckynumber()}",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}


String generateluckynumber(){
  var random=Random();
  return "Hello Flutter\n Your lucky number is ${random.nextInt(20)}";
}
