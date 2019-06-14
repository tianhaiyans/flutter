import 'package:flutter/material.dart';

//void main(){
//  runApp(){
//    MyApp();
//  }
//}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text('flutter',style: TextStyle(color: Colors.white),),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }

}
//动态列表  for循环
class HomeContent extends StatelessWidget{

  List<Widget> _getData(){
    List<Widget> list=new List();
    for(var i=0;i<20;i++){
       list.add(ListTile(
         title: Text('我是第$i标题'),
       ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }

}