import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("I Am Rich"),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Center(
          child: Image.asset('images/diamond.png'),
        ),
      ),
    ),
  ));
}
