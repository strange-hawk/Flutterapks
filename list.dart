// inside main.dart
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring list",
    home: Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          ("Hello World"),
          style: TextStyle(
            fontFamily: "Ralewy",
          ),
          textAlign: TextAlign.center,
        )),
      ),
      body: getlistview(),
    ),
  ));
}

Widget getlistview() {
  var listview = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.accessible),
        title: Text("Accessible"),
        subtitle: Text(("Everything is accessible")),
//        onTap: bookFlight(context),
        trailing: Icon(Icons.wb_auto),
      ),
      ListTile(
        leading: Icon(Icons.accessible),
        title: Text("Accessible"),
        subtitle: Text(("Everything is accessible")),
//        onTap: bookFlight(context),
        trailing: Icon(Icons.wb_auto),
      ),
    ],
  );
  return listview;
}


