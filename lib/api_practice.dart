import 'package:flutter/material.dart';

void main(){
  runApp( practice());
}

class practice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practicing Api intigration"
          ,
      home: mainScreen(),

    );
  }

}


class mainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API integration Practice  "),
        backgroundColor: Colors.red.shade600,
      ),
      body: Center(
        child: Text("check console for output"),
      ),
    );
  }

}