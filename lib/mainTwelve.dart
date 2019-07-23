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


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
       crossAxisCount: 3,
       mainAxisSpacing:10,
       crossAxisSpacing:10,
       padding: EdgeInsets.all(10),
       children: <Widget>[
          Container(
             child:ListView(
               children: <Widget>[
                 Image.network('https://www.itying.com/images/flutter/1.png'),
                 Text('我是第一个标题',textAlign: TextAlign.center,),
               ],
             )

         ),
         Container(
             child:ListView(
               children: <Widget>[
                 Image.network('https://www.itying.com/images/flutter/2.png'),
                 Text('我是第二个标题',textAlign: TextAlign.center),
               ],
             )

         ),
         Container(
             child:ListView(
               children: <Widget>[
                 Image.network('https://www.itying.com/images/flutter/3.png'),
                 Text('我是第三个标题',textAlign: TextAlign.center),
               ],
             )

         ),
         Container(
             child:ListView(
               children: <Widget>[
                 Image.network('https://www.itying.com/images/flutter/4.png'),
                 Text('我是第四个标题',textAlign: TextAlign.center),
               ],
             )

         ),
         Container(
             child:ListView(
               children: <Widget>[
                 Image.network('https://www.itying.com/images/flutter/5.png'),
                 Text('我是第五个标题',textAlign: TextAlign.center),
               ],
             )

         )

       ],
    );
  }

}