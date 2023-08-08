import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

class splash3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _splash3state();

}

class _splash3state extends State{
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/dober.png"),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(home: splash3()));
}