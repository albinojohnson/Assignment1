
import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview Builder"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 70),
        itemCount: 20,
        itemBuilder: (context,index){
          return const Card(
            child: Center(
              child: Column(


              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Text("item"),
                Icon(Icons.ac_unit)

              ],
            ),
            ) );
        },
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: GridView2(),));
}
