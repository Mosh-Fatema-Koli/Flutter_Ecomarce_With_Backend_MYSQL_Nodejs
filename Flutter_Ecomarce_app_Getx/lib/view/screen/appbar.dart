
import 'package:flutter/material.dart';
import 'package:get/get.dart';

setAppBar() {
  // ignore: unnecessary_new
  return new  AppBar(
    backgroundColor: Color.fromARGB(255, 241, 6, 155),
    elevation: 0,
    actions: [
      Row(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined),),
          Text("Your Location",style: TextStyle(),)
        ],
      ),
      IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),)
    ],

  );
}