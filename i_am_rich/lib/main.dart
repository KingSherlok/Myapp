import 'package:flutter/material.dart';

//this main is starting of all the apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Center(child: (Text('I AM RICH'))),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Image(
            image: AssetImage('Images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
