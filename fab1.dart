import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.light,
        accentColor: Colors.yellow,
      ),

    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String myText = "Hello World";

  Widget _bodywidget() {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(myText,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.purpleAccent,
                ),
                ),
              ],
            )
        )

    );
  }

  void _changeText(){
     setState(() {
       if(myText.startsWith("H")){
       myText = "Welcome to my text";}
       else if(myText.startsWith("W")){
         myText = "Hello World";
       }
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: _bodywidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_balance),
        onPressed: _changeText,
        hoverColor: Colors.brown,
      ),
    );
  }
}




