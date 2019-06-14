import 'package:flutter/material.dart';

//void main(){
//  runApp(){
//    MyApp();
//  }
//}
//动态列表
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title:Text('flutter',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            )
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
    );
  }
}
//垂直列表
class HomeContent extends StatelessWidget{

  List<Widget> _getData(){
    return [
      ListTile(
        title: Text('我是一个标题'),
      ),
      ListTile(
        title: Text('我是一个标题'),
      ),
      ListTile(
        title: Text('我是一个标题'),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }

}