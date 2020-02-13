import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';
void main(){
  runApp(
      MaterialApp(
        home: Myapp(),
      ));
}
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds: 3),
    (){
      Navigator.push(
        context, MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
      );
    },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Center (
        child: Image.asset("images/uty.png",
         width: 150,
         height: 150,
       ),
     ),
     ),
    );
  }
}
