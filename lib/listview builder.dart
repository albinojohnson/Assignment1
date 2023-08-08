import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listview_with_builder extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Listview Builder"),

      ),
      body:ListView.builder(itemBuilder:(context,intex){
        return Card(
          child:Icon(Icons.supervised_user_circle_outlined,size:30,color: Colors.blueAccent,),
        );
      }
      )
    );
  }
}

void main(){
  runApp(MaterialApp(home:Listview_with_builder(),));
}