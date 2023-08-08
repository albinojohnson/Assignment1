import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Loginpage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                  labelText: "Username",
                  hintText: "User name",

                ),
              ),
            ),
            TextField(),
            ElevatedButton(onPressed: (){}, child: Text("loginpage"))
          ],
        ),
      ),

    );
  }

}