import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setStateexample extends StatelessWidget {
  final String message;  // Declare a variable to hold the message

  // Constructor to accept the message
  setStateexample({required this.message});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(message: message), // Pass the message to MainScreen
    );
  }
}

class MainScreen extends StatefulWidget {
  final String message;  // Declare a variable to hold the message

  // Constructor to receive the message
  MainScreen({required this.message});

  @override
  State<MainScreen> createState() => CounterScreen();
}

class CounterScreen extends State<MainScreen> {
  int count = 0;

  // Function to increment count
  void increCount() {
    if (count < 10) {
      setState(() {
        count++;
      });
    } else if (count == 10) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Maximum limit reached '10'"),
        duration: Duration(seconds: 3),
      ));
    }
  }

  // Function to decrement count
  void dec() {
    if (count > 0) {
      setState(() {
        count--;
      });
    } else if (count == 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Minimum limit reached '0'"),
        duration: Duration(seconds: 3),
      ));
    }
  }

  // Function to reset count
  void reset() {
    setState(() {
      count = 0;
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Value reset is done"),
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
        child: Text('Count: $count'), // Display the count
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Align buttons at the bottom
        children: [
          FloatingActionButton(
            onPressed: increCount,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: dec,
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: reset,
            child: Icon(Icons.lock_reset),
          ),
          SizedBox(height: 20),
          Text(widget.message), // Display the passed message
        ],
      ),
    );
  }
}
