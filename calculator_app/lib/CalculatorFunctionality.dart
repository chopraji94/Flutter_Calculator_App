import 'package:flutter/material.dart';

class CalculatorClass extends StatefulWidget {
  @override
  State<CalculatorClass> createState() => _CalculatorClassState();
}

class _CalculatorClassState extends State<CalculatorClass> {
  String fieldText = "Calculated output -: 0";

  final TextEditingController firstField = new TextEditingController();
  final TextEditingController secondField = new TextEditingController();

  void ClearField1() {
    setState(() {
      firstField.text = "";
    });
  }

  void ClearField2() {
    setState(() {
      secondField.text = "";
    });
  }

  void doAddition() {
    setState(() {
      int number1 = int.parse(firstField.text);
      int number2 = int.parse(secondField.text);
      int total = number1 + number2;
      fieldText = "Calculated output -: " + "$total";
    });
  }

  void doSubtraction() {
    setState(() {
      int number1 = int.parse(firstField.text);
      int number2 = int.parse(secondField.text);
      int total = number1 - number2;
      fieldText = "Calculated output -: " + "$total";
    });
  }

  void doMultiplication() {
    setState(() {
      int number1 = int.parse(firstField.text);
      int number2 = int.parse(secondField.text);
      int total = number1 * number2;
      fieldText = "Calculated output -: " + "$total";
    });
  }

  void doDivision() {
    setState(() {
      int number1 = int.parse(firstField.text);
      int number2 = int.parse(secondField.text);
      int total = number1 ~/ number2;
      fieldText = "Calculated output -: " + "$total";
    });
  }

  Widget BodyWidget() {
    return new Container(
      padding: EdgeInsets.all(30.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "$fieldText",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            new Padding(padding: EdgeInsets.only(bottom: 10.0)),
            new TextFormField(
              keyboardType: TextInputType.number,
              onTap: ClearField1,
              decoration: new InputDecoration(
                  hintText: "Enter 1st number",
                  labelStyle: TextStyle(color: Colors.teal, fontSize: 20.0)),
              controller: firstField,
            ),
            new Padding(padding: EdgeInsets.only(top: 10.0)),
            new TextFormField(
              keyboardType: TextInputType.number,
              onTap: ClearField2,
              decoration: new InputDecoration(
                  hintText: "Enter 2nd number",
                  labelStyle: TextStyle(color: Colors.teal, fontSize: 20.0)),
              controller: secondField,
            ),
            new Padding(padding: EdgeInsets.only(top: 10.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: doAddition,
                  child: Text("+"),
                  color: Colors.blueAccent,
                ),
                new MaterialButton(
                  onPressed: doSubtraction,
                  child: Text("-"),
                  color: Colors.blueAccent,
                )
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 10.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: doMultiplication,
                  child: Text("*"),
                  color: Colors.blueAccent,
                ),
                new MaterialButton(
                  onPressed: doDivision,
                  child: Text("/"),
                  color: Colors.blueAccent,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Calculator app"),
        centerTitle: true,
      ),
      body: BodyWidget(),
    );
  }
}
