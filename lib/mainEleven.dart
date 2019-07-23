import 'package:flutter/material.dart';
import 'res/data.dart';
//void main(){
////  runApp(MyApp());
////}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter',
              style: TextStyle(
                color: Colors.white,
              )
          ),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,

      ),
    );
  }

}
//循环动态列表
class HomeContent extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (content,index){
        return ListTile(
          leading: Image.network(listData[index]['iamge']),
           title: Text(listData[index]['title']),
           subtitle: Text(listData[index]['autor']),
        );
      }
    );
  }

}