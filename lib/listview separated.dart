import 'package:flutter/material.dart';

class Listview_separated extends StatelessWidget{
var month = ["january","february","march","april","may","june","july","august","september","october","november","december"];
  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview separated"),
      ),
      body: Center(
        child: ListView.separated(itemBuilder: (context, index) {
          return Card(
            child: Text(month[index]),
          );
        },
            separatorBuilder: (context,index){
              if(index % 4 == 0){
                return Card(
                  child: Text("advertisement"),
                  color: Colors.red,
                );
              }else{
                return SizedBox();
              }
            },
            itemCount: 12),
      ),
    );
  }
  }

  void main(){
  runApp(MaterialApp(home: Listview_separated(),));
  }