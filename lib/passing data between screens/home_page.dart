import 'dart:js';

import 'package:flutter/material.dart';

import 'details.dart';
import 'dummy_data.dart';
void main(){
  runApp(MaterialApp(
    home: product_home(),
    routes:{
      'details':(context) => ProductsDetails()
  }
    ,));
}
class product_home extends StatelessWidget {
  const product_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shop now"),
      ),
      body: ListView(
        children: products.map((productonebyone) => Card(
    child: ListTile(
    leading: Container(
      height: 100,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image:NetworkImage(productonebyone['image1'])),
          ),
        ),
      title: Text(productonebyone['name']),
      subtitle: Text('\$ ${productonebyone['price']}'),
      onTap: (){
      gotoNextpage(context,productonebyone['id']);
      },
    ),
        )).toList(),
    ),
      );

  }
  void gotoNextpage(BuildContext context,ProductId){
    Navigator.pushNamed(context,'details',arguments: ProductId);
  }
}
