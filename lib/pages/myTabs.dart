import 'package:flutter/material.dart';
import 'home.dart';
import 'my.dart';
import 'phone.dart';
class tabs extends StatefulWidget {
  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  int _currentIndex=0;
  List _listPage=[
     home(),
     phone(),
     my()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('flutter',
            style: TextStyle(
              color: Colors.white,
            )
        ),
      ),
      body: this._listPage[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index){
            setState(() {
              this._currentIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_call),
              title: Text('通讯录'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Text('我的')
            )
          ]
      ),
    );
  }
}
