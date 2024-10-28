import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(69, 151, 249, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(42, 80, 164, 1),
          title: Center(
            child: Text(
              'Ask me something',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: MainPage(),
      ),
    ),
  );
}

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('Hello Flutt!!'),
    );
  }
}

