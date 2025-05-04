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
          child: Center(
            child: Column(
              children: [
                Text("Its extra page for practice "),
                FloatingActionButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      title: Text("Alert Dialogbox"),
                      content: Text("it's a example of alert dialogbox "),
                      actions: [TextButton(onPressed: (){
                        Navigator.pop(context)  ;
                      }, child: Column(children: [
                        Text("ok"),
                      ],))],
                    );

                  });

                },child: Icon(Icons.add_alert),)
              ],
            ),
          ),
        ),
    );
  }

}