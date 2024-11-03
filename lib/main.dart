import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MainPage()
  );
}

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{

  int num = 1;
  void incrementNum(){
     num = Random().nextInt(5)+1;
    //if (num < 5){ num++;}
    //else{ num = 1 ;}
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(69, 151, 249, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(42, 80, 164, 1),
          toolbarHeight: 70,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily : "Poppins-Regular",
            fontSize: 32, // Ora dovresti vedere la modifica della dimensione
            fontWeight: FontWeight.w900,
          ),
          title: Center(
            child: Text('Ask me something'),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed:(){
                setState(() {
                  incrementNum(); print(num);
                });
                },
              child: Image.asset('assets/img/ball${num}.png'),
            ),
          ),
        ),
      ),
    );
  }
}

