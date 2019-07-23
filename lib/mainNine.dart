import 'package:flutter/material.dart';
import 'res/data.dart';
//void main(){
//  runApp(MyApp());
//}

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

  List<Widget> _getData()
  {
    var lists=listData.map((value){
       return ListTile(
          leading: Image.network(value['iamge']),
          title: Text(value['title']),
          subtitle: Text(value['autor']),
       );
    });

    return lists.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(

      children:this._getData(),
    );
  }

}