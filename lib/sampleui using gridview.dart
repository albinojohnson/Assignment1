import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewui(),));
}

class gridviewui extends StatelessWidget {
var colors=[
  Colors.blueAccent,
Colors.red,
Colors.amber,
Colors.cyanAccent,
Colors.limeAccent,
Colors.yellow,
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(18.0),
child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
mainAxisSpacing: 10,
crossAxisSpacing: 5),
 itemBuilder: (context,index){
  return Container(
  height: 20,
  decoration: BoxDecoration(
borderRadius: BorderRadius.circular(60),color: colors[index]
// image: DecorationImage(
// image: NetworkImageImage(images[index]))
),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Icon(Icons.ac_unit),
SizedBox(
width: 15,

),
Text("hello")
],
),
  );
},
itemCount: 6,
),

      )
    );
  }
}
