import 'package:flutter/material.dart';

class Rotation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('회전검사',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.black,
    ) ;
  }
}