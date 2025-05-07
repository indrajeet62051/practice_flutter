import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter/api_practice.dart';
import 'setState_example.dart';
import 'async_await_future.dart';
import 'ListView_With_useInput.dart';
import 'showDialog.dart';
import 'extra.dart';
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "async, await and future demo",
        theme: ThemeData(primarySwatch: Colors.red),
        home: main_page()
    ) ;
  }

}

class main_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo ", style: TextStyle(fontSize: 25,color:Colors.orange)),

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
        child: Center(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.red,
                child: Center(child: Text("Data will be shown here :- ")),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              } , child: Text("Click here "))
            ],
          ),
        ),
      ),

    ) ;
  }

}



class SecondPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(child: Column(
        children: [
          Text("Welcome to the second page!"),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
          }, child: Text("redirected to another page")),
          SizedBox(height: 16),
          SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => setStateexample(message: "Hello from the first screen"),
                ),
              );
            },
            child: Text("Try SetState"),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => usr_input()));
          }, child: Text("redirect to ListView example")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Extrapage()));
          }, child: Text("extra page redirect")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("Navigator"),
                content: Text("Are you sure want to redirect to showDialog Example page "),
                actions: [TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancle")),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SHOWdialog()));
                          }, child: Text("Yes"))
                ],
              ) ;
            });
          }, child: Text("redirect to shoeDialog example")),
          SizedBox(height: 20,),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => practice()));},child: Text("practice Api"),)

        ],
      )),
    );
  }
}
