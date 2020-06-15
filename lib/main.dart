import 'package:bidirectional_listview/bidirectional_listview.dart';
import 'package:flutter/material.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:wondersapp/implement.dart';
import 'package:wondersapp/Information.dart';
import 'package:wondersapp/reset.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Wonders '

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

int _selectedIndex = 0;

List _pages = [
  Implement(),
  Information(),
  Reset(),

];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(

          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('진단')),
            BottomNavigationBarItem(icon: Icon(Icons.perm_device_information), title: Text('휴대폰 정보')),
            BottomNavigationBarItem(icon: Icon(Icons.backup), title: Text('초기화')),
          ]),
    );

  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

