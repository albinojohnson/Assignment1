import 'package:flutter/material.dart';

class GridViewcount extends StatelessWidget {
  const GridViewcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridviewcount"),
      ),
      body: GridView.count(crossAxisCount: 4,
      children: List.generate(20, (index) => Card(
        child: Center(
          child: Text("Hello"),
        ),
      )),
      ),
    );
  }
}


void main(){
  runApp(MaterialApp(home: GridViewcount(),));
}