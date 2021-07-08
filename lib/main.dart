import 'package:flutter/material.dart';
import "dart:math";

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  var leftdicenumber = 1;
  var rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(110),
      height: MediaQuery.of(context).size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$leftdicenumber.png"),
              onPressed: () {
                setState(() {
                  leftdicenumber = randomquote(6);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

randomquote(n) {
  final _random = new Random();

  var element = _random.nextInt(n);
  return element;
}
