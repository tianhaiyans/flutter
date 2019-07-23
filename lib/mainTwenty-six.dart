import 'package:flutter/material.dart';
import 'res/data.dart';
import 'pages/myTabs.dart';
import 'package:dio/dio.dart';
import 'dart:async';

//void main() {
//  runApp(MyApp());
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        body: FulTest(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    );
  }
}

class FulTest extends StatefulWidget {
  @override
  _FulTestState createState() => _FulTestState();
}

class _FulTestState extends State<FulTest> {
  void getHttp() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(
        "https://free-api.heweather.com/s6/weather?location=深圳&key=9296c0a393d64db5b1f4b66290f40125");
//    print(response.data.toString());
    setState(() {
      myText = response.data.toString();
    });
  }

  String myText;

  @override
  Widget build(BuildContext context) {
    getHttp();
    return Container( child: Text(myText),);
  }
}

//切换底部导航栏的页面跳转
