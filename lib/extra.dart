import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Extrapage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Its extra page ",
      home: mainPage(),
    ) ;
  }

}

class mainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extra page "),

      ),
      body: Center(child: Text("its extra page ")),
    ) ;
  }

}