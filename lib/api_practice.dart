import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(practice());
}

class practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practicing API Integration",
      debugShowCheckedModeBanner: false,
      home: mainScreen(),
    );
  }
}

class mainScreen extends StatefulWidget {
  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fatchData(); //Call the API when screen loads
  }

  Future<void> fatchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body);
      });

      print(data);
    } else {
      print("Unable to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Integration Practice"),
        backgroundColor: Colors.red.shade600,
      ),
      body: data.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return ListTile(
            title: Text(item['title']),
            subtitle: Text(item['body']),
          );
        },
      ),
    );
  }
}
