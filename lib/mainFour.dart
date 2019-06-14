import 'package:flutter/material.dart';

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
 //垂直列表文字标题
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
   
      children: <Widget>[
         ListTile(
           leading:Image.network('https://www.itying.com/images/flutter/1.png'),
           title: Text('我是一级标签'),
           subtitle: Text('我是内容区域我是内容区域'),
           
       ),
        ListTile(
          leading: Icon(Icons.add_call),
          title: Text('我是一级标签'),
          subtitle: Text('我是内容区域我是内容区域'),

        ),
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('我是一级标签'),
          subtitle: Text('我是内容区域我是内容区域'),

        )
      ],
    );
  }
  
}