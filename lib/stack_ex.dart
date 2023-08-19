import 'package:flutter/material.dart';

class Stack_ex extends StatelessWidget {
  const Stack_ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack_Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image:DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZpzuB7FoOytBzPgT_A64rQ9RU2gKDqPXGjzq_VunKb5Z_olW4O7H_a8QHRToIUcPy3_A&usqp=CAU"),
                ),
                ),
            ),

        Container(
          height: 200,
          width: 200,
          color: Colors.cyanAccent,
        ),
        Container(
        height: 100,
        width: 100,
          color: Colors.greenAccent
        ),
        ],
    ),
      ),
    );

  }
}


void main(){
  runApp(MaterialApp(home: Stack_ex(),));
}