import 'package:flutter/material.dart';
import 'dart:math';

class practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Colors.lightGreenAccent,
          padding: EdgeInsets.only(bottom: 10.0),
          width: 500.0,
          height: 600.0,
          child: Column(
            children: <Widget>[
              FlightImageAsset(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("    Name: ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0,
                          color: Colors.blueAccent,
                        )),
                  ),
                  Expanded(
                      child: Text(
                    "Animesh Gupta",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontSize: 21.0,
                      color: Colors.deepPurpleAccent,
                    ),
                  )),
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "    Institute: ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0,
                      color: Colors.blueAccent,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "    IIITV",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0,
                      color: Colors.deepPurpleAccent,
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        "    Roll no.: ",
                        //textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          fontSize: 28.0,
                          color: Colors.blueAccent,
                        ),
                      )),
                  Expanded(
                      child: Text(
                        "201852004",
                        //textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          color: Colors.deepPurple,
                        ),
                      )),
                ],
              ),


        Row(
          children: <Widget>[
            Expanded(
                child: Text(
                  "    Hobbies: ",
                  //textDirection: TextDirection.ltr,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                    color: Colors.blueAccent,
                  ),
                )),
            Expanded(
                child: Text(
                  "Movies(Hollywood) ",
                  //textDirection: TextDirection.ltr,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 17.0,
                    color: Colors.deepPurple,
                  ),
                )),
          ],
        ),



              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        "    Languages: ",
                        //textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          fontSize: 24.5,
                          color: Colors.blueAccent,
                        ),
                      )),
                  Expanded(
                      child: Text(
                        "   C , C++",
                        //textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                          color: Colors.purple,
                        ),
                      )),
                ],
              ),
              LinkedIn(),
              Lucky(),




            ],
          ),
          //margin: EdgeInsets.only(left: 10.0, top: 40.0),
      )
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/abc.png');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}

class LinkedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 300,
      height: 50.0,
      child: RaisedButton(
        color: Colors.lime,
        child: Text("Link to see my LinkedIn profile",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20.0
        ),
        ),
        elevation: 10.0,
        onPressed: (){
          LinkedInprofile(context);
          Lucky();
      }),
    );
  }
}

void LinkedInprofile(BuildContext context){
  var alertDialogue = AlertDialog(
    title: Text("LinkedIn",
    ),
    content: Text("https://www.linkedin.com/in/animesh-gupta-24716a173"),
    
  );
  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialogue;
      }
  );
}




class Lucky extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 300,
      height: 50.0,
      child: RaisedButton(
          color: Colors.lime,
          child: Text("your lucky number",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0
            ),
          ),
          elevation: 10.0,
          onPressed: (){
            luckynumber(context);
          }),
    );
  }
}

void luckynumber(BuildContext context){
  var alertDialogue = AlertDialog(
    title: Text("Lucky number",
      textAlign: TextAlign.center,
    ),
    content: Text("Voilla!!!!\n${generate_luckynumber()}",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w700,
    ),
    ),

  );
  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialogue;
      }
  );
}

int generate_luckynumber()
{
  var random = new Random();
  int LuckyNumber = random.nextInt(5);
  return LuckyNumber;

}