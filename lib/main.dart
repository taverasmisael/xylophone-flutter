import 'package:flutter/material.dart';
import 'package:xylophone/xylo.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Xylophone(),
          ),
        ),
      ),
    );
  }
}
