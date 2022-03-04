import 'package:flutter/material.dart';
import 'CalculatorFunctionality.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator app",
      home: CalculatorClass(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark
      ),
    );
  }
}