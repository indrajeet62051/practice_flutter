import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(usr_input());
}

class usr_input extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen(),
    );
  }
}

class screen extends StatefulWidget{
  @override
  State<screen> createState() => userInput() ;
  }

class userInput extends State<screen>{
 TextEditingController  myController = TextEditingController();
 void InputHandle(){

 }



  @override
  Widget build(BuildContext context) {
   return   Scaffold(
     appBar: AppBar(
       title: Text("User Input " ,),
       backgroundColor: Colors.blue,
     ),
     body: Row(
       children: [
         Text("Enter the nuber "),
         SizedBox(width: 30,),
         TextField(
           controller: myController,
           keyboardType: TextInputType.number,
         )

       ],
     ),
     floatingActionButton: FloatingActionButton(onPressed: (){
       int myvalue = int.tryParse(myController.text) ?? 0;
       Navigator.push(context, MaterialPageRoute(builder: (context) => listView( message : myvalue)));
     }, child: Text("Redirect to ListView Example"),),
   );
  }

}





// class try_listview extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: listView(),
//     );
//   }
// }


class listView extends StatelessWidget{
  final int message;

  listView({required this.message});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Example")),
      body: ListView.builder(
        itemCount: message, // or any number
        itemBuilder: (context, index) {
          return Text('Count: $index');
        },
      ),
    );
  }
}


