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

  int current_step =0;
  List<Step> my_steps = [
    Step(title: Text("Step 1"), content: Text("Some content 1"), isActive: true),
    Step(title: Text("Step 2"), content: Text("Some content 2"), isActive: true),
    Step(title: Text("Step 3"), content: Text("Some content 3"), isActive: true)
  ];

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
      body: Container(
        child: Stepper(
          steps: my_steps,
          currentStep: this.current_step,
          type: StepperType.horizontal,
        ),
      ),
    );
  }
}
