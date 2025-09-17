import 'dart:html';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Buttons that do different things';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
   
      _counter++;
    });
  }

  Widget _buildButton(String text, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        // Handle button press
        if (color == Colors.blue) {
          print("blue has been pressed");
        }
        if (color == Colors.red) {
          print("red has been pressed");
        }
        if (color == Colors.yellow) {
          print("yellow has been pressed");
        }
        if (color == Colors.green) {
          print("green has been pressed");
        }
      },
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
  
        title: const Text('Buttons'),
      ),
      body: Center(
  
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 200,
                    child: _buildButton('B', Colors.blue),
                  ),
                  SizedBox(
                    width: 100,
                    height: 200,
                    child: _buildButton('R', Colors.red),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 200,
                    child: _buildButton('Y', Colors.yellow),
                  ),
                  SizedBox(
                    width: 100,
                    height: 200,
                    child: _buildButton('G', Colors.green),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
