import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviewcustom extends StatelessWidget {
  const Gridviewcustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridviewcustom"),
      ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildListDelegate(
          List.generate(15, (index) => Card(
            child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(fit: BoxFit.fill,
                        image: NetworkImage("https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80")
                      ),
                    ),
                  ),
                  const Text(
                    "item.1",
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,

                    ),
                  ),
                  const Text("\$280",style: TextStyle(fontSize: 20),),
                ],

              ),
            ),
          ))
        ),



      ),
    );


  }
}


void main(){
  runApp(MaterialApp(home: Gridviewcustom(),));
}

