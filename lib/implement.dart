import 'package:flutter/material.dart';
import 'package:wondersapp/image/blue.dart';
import 'package:wondersapp/image/bluetooth.dart';
import 'package:wondersapp/image/camera.dart';
import 'package:wondersapp/image/compass.dart';
import 'package:wondersapp/image/direction.dart';
import 'package:wondersapp/image/flash.dart';
import 'package:wondersapp/image/gps.dart';
import 'package:wondersapp/image/green.dart';
import 'package:wondersapp/image/homebutton.dart';
import 'package:wondersapp/image/multitouch.dart';
import 'package:wondersapp/image/proximity.dart';
import 'package:wondersapp/image/red.dart';
import 'package:wondersapp/image/soundbutton.dart';
import 'package:wondersapp/image/touch.dart';
import 'package:wondersapp/image/vibration.dart';
import 'package:wondersapp/image/rotation.dart';
import 'package:wondersapp/image/wifi.dart';
import 'image/mike.dart';

Widget _buildButton(text, context, Page) {
  return Container(
    padding: EdgeInsets.all(10),
    width: 120,
    height: 120,
    alignment: Alignment.center,
    child: new RaisedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Page));
      },
      shape: CircleBorder(side: BorderSide(width: 1)),
      child: new Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )),
    ),
  );
}

class Implement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Wonders',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildButton('마이크', context, Mike()),
                  _buildButton('카메라', context, Camera()),
                  _buildButton('다중터치', context, Multitouch()),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildButton('터치', context, Touch()),
                      _buildButton('방향센서', context, Direction()),
                      _buildButton('회전검사', context, Rotation()), //X
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _buildButton('Gps', context, Gps()), //X
                          _buildButton('접근센서', context, Proximity()),
                          _buildButton('나침반', context, Compass()),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _buildButton('와이파이', context, Wifi()), //X
                              _buildButton('블루투스', context, Bluetooth()),
                              _buildButton('음량버튼', context, Soundbutton()), //X
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  _buildButton('손전등', context, Flash()),
                                  _buildButton('Home버튼', context, Homebutton()),
                                  _buildButton('진동검사', context, Vibration()),
                                  //X
                                ],
                              ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          _buildButton('Red', context, Red()),
                                          _buildButton('Blue', context, Blue()),
                                          _buildButton(
                                              'Green', context, Green()),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
    );
  }

}
