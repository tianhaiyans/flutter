import 'package:flutter/material.dart';
import 'res/data.dart';
import 'pages/myTabs.dart';
//void main(){
//  runApp(MyApp());
//}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:tabs(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,

      ),
    );
  }
}

//切换底部导航栏的页面跳转