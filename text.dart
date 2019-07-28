// inside main.dart
import 'package:flutter/material.dart';
import './home.dart';

void main(){
  runApp(MaterialApp(
    title: "Exploring UI Widgets",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("UI Widgets",
        style: TextStyle(
          fontFamily: 'Roboto',
              fontWeight: FontWeight.w700
        ),
        textAlign: TextAlign.center,

        )
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Home(),
    ),

  ));
}


// inside home.dart
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        alignment: Alignment.center,
        child: Text("Flight",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50.0,
              color: Colors.blueAccent,
            decoration: TextDecoration.none,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600
          ),
        ),
        color: Colors.black12,
//        width:100.0,
//        height: 200.0,
      margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
      ),
    );
  }
}
