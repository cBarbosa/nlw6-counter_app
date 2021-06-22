import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro App"),
      ),
      body: Center(
          child: Text(
        "Contador\n$count",
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void increment() {
    count++;
    setState(() {});
  }
}
