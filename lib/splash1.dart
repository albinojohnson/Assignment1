import 'package:flutter/material.dart';
import 'package:untitled/splash1.dart';

void main() {
  runApp(MaterialApp(home: Splash1()));
}

class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.sailing_outlined,
              //   size: 30,
              //   color: Colors.deepPurpleAccent,),
              Image.asset(
                "assets/icons/dober.png",
                height: 300,
                width: 300,
              ),
              const Text(
                "LUNA THE DOBER",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}