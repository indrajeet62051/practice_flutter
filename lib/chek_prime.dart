import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Async Demo',
      home: AsyncDemoScreen(),
    );
  }
}

class AsyncDemoScreen extends StatefulWidget {
  const AsyncDemoScreen({super.key});

  @override
  _AsyncDemoScreenState createState() => _AsyncDemoScreenState();
}

class _AsyncDemoScreenState extends State<AsyncDemoScreen> {
  String _data = 'No data yet';

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3)); // simulates network delay
    return 'Data loaded successfully!';
  }

  void loadData() async {
    String result = await fetchData();
    setState(() {
      _data = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Async Practice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_data),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: loadData,
              child: Text('Load Data'),
            ),
          ],
        ),
      ),
    );
  }
}
