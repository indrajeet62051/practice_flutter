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

class userInput extends State<screen> {
  TextEditingController myController = TextEditingController();

  void InputHandle() {
    // You can handle input logic here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Input"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding for spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          children: [
            Text("Enter the number (Max 300):"),
            SizedBox(height: 20), // Add space between Text and TextField
            TextField(
              controller: myController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter a number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), // Space between TextField and button
            ElevatedButton(
              onPressed: () {
                // Try parsing the input value
                int myvalue = int.tryParse(myController.text) ?? 0;

                // Restrict the value to a maximum of 300
                if (myvalue > 300) {
                  myvalue = 300; // Set the value to 300 if it exceeds it
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Value exceeds 300, setting to 300."),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }

                // Navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => listView(message: myvalue),
                  ),
                );
              },
              child: Text("Redirect to ListView Example"),
            ),
          ],
        ),
      ),
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


