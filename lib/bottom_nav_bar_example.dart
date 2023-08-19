import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/listview%20builder.dart';
import 'package:untitled/login.dart';
import 'package:untitled/splash1.dart';

class Bottom_Nav_Bar_Example extends StatefulWidget {
  const Bottom_Nav_Bar_Example({super.key});

  @override
  State<Bottom_Nav_Bar_Example> createState() => _Bottom_Nav_Bar_ExampleState();
}

class _Bottom_Nav_Bar_ExampleState extends State<Bottom_Nav_Bar_Example> {
  int index=0;
  var screens=[
    LoginPage(),
  ListView(),
    Listview_with_builder(),
    Splash1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.yellow,
        currentIndex: index,
        onTap: (tappedindex){
          setState(() {
            index =(tappedindex);
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.greenAccent,
            icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(
          backgroundColor: Colors.yellow,
          icon: Icon(Icons.account_circle_rounded),label: "Profile"),
        BottomNavigationBarItem(
            backgroundColor: Colors.greenAccent,
            icon: Icon(Icons.add_box_rounded),label: "Create"),


        ],
      ),
    body: Center(
    child: screens[index],
    ),
    );
  }
}


void main(){
  runApp(MaterialApp(home: Bottom_Nav_Bar_Example(),));
}
