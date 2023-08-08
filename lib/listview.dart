import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: listview()));
}

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Hamburger"),
              subtitle: Text("\$99"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/delicious-burger.jpg"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("pizza"),
              subtitle: Text("\$99"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/delicious-burger.jpg"),
            ),
          ),
              Text("item 1"),
              Text("item 2"),
              Text("item 3"),
              Text("item 4"),
              Text("item 5"),
            ],
          ),

    );
  }
}
