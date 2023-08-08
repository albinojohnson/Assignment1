import 'package:flutter/material.dart';

class GridViewextend extends StatelessWidget {
  const GridViewextend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView extends"),
      ),
      body: GridView.extent(maxCrossAxisExtent: 70,
      children: List.generate
        (30, (index) => Card(
        child: Center(
          child: Text("hey"),
        ),
      )),
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(home:GridViewextend() ,));
}