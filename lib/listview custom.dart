import 'package:flutter/material.dart';

class Listview_Custom extends StatelessWidget{
  @override
Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("list view custom"),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate((
      List.generate(100, (index) => const Card(
        child: Text("hello"),
      ))
      ))

      ),
    );
  }
}

void main(){
  runApp(MaterialApp(home:Listview_Custom(),));
}