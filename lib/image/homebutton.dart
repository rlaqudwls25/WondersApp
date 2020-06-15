import 'package:flutter/material.dart';



class Homebutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Home버튼',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(40),
                child: Image.asset(
                  'images/home.png',
                  width: 400.0,
                  height: 250.0,
                  fit: BoxFit.contain,
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 50.0)),
              Text('두 개의 버튼을 동시에 눌러주세요',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0))
            ],
          ),
        ));
  }
}