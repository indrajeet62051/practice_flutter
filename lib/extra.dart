import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Extrapage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "its extra page",
      home: extra(),
    );
  }

}


class extra extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Extra page App bar"),
      ),
      body:
        Container(
          width: 500,
          height: 500,
          child: Center(child: Text("Its extra page for practice ")),
        ),
    );
  }

}