import 'package:flutter/material.dart';

class AppBarW extends StatelessWidget {
  const AppBarW({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Icon(Icons.menu,color: Colors.black,),
      title: Text("Kavin",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
    );
  }
}