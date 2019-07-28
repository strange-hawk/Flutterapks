//inside main.dart
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



import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 40.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Spice Jet",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 33.0,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600),
                )),
//                EdgeInsets.only(top:10.0),
                Expanded(
                    child: Text(
                  "From Mumbai to New Delhi via Bangalore",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Spice Jet",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 33.0,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600),
                )),
                Expanded(
                    child: Text(
                  "From Jaipur to Goa",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600),
                )),
              ],
            ),
            FlightImageAsset()
          ],
        ),

        color: Colors.amberAccent,
//        width:100.0,
//        height: 200.0,
//        margin: EdgeInsets.all(20.0),
//        padding: EdgeInsets.all(20.0),
      ),
    );
  }
}

//inside home.dart
class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage= AssetImage("images/tenor.gif");
    Image image=Image(image: assetImage,width: 250.0);
    return Container(child: image,padding: EdgeInsets.all(20.0),);
  }
}
