import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Futter utilties",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.teal,
      brightness: Brightness.light,
      accentColor: Colors.yellow,
    ),
    home: HomePage(),

  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_Util",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
        ),
        ),
        centerTitle: true,
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = AlertDialog(
    content:  Text("Dialogue is up",
      style: TextStyle(
          fontSize: 20.0,
        color: Colors.deepOrangeAccent,
        fontWeight: FontWeight.w900,
      ),
      ),  
    title: Center(child: Text("Hello there!!!",
    style: TextStyle(
      color: Colors.lime,
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
    ),
    )),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
            child: Text("Click me",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900
              ),
            ),
            color: Colors.indigo,
//            onPressed: ()=> Scaffold.of(context).showSnackBar(
//                new SnackBar(
//                  content: Text("You clicked me"),
//                  duration: Duration(milliseconds: 378),
//
//                )),
        onPressed: () => showDialog(
            context: context,
            child: dialog,
        ),
        ),
      ),
    );
  }
}

