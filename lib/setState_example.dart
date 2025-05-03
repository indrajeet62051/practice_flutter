import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(setStateexample());
}

class setStateexample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget{
  @override
  State<MainScreen> createState() => CounterScreen() ;
}

class CounterScreen extends State<MainScreen>{
  int count = 0;

  void increCount() {
    if(count < 10){
      setState(() {
        count++;
      });
    } else if(count==10){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:Text("maximum limit reached '10'"),
            duration: Duration(seconds: 3),
      ));
    }
  }
  void dec(){
    if(count > 0){
      setState(() {
        count--;
      });
    } else if(count==0){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:Text("minimum limit reached '0"),
            duration: Duration(seconds: 3),
          ));
    }
  }
  void reset(){
    setState(() {
      count = 0;
    });
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Value reset is done "),
          duration: Duration(seconds: 2),

        ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
          child: Text('Count :- $count')
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center, // keep to the bottom right
        children: [
          FloatingActionButton(
            onPressed: increCount,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 16), // space between buttons
          FloatingActionButton(
            onPressed: dec,
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: reset,
            child: Icon(Icons.lock_reset),
          ),
        ],
      ),

    );
  }

}


