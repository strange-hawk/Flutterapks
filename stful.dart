import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful App",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  _FavoriteCityState createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });

              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your fvourite city is ${nameCity}",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.blueAccent),
                )),
          ],
        ),
      ),
    );
  }
}
