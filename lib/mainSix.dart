import 'package:flutter/material.dart';

//void main(){
//  runApp(){
//     MyApp();
//  }
//}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           centerTitle:true,
           title:Text('flutter',style: TextStyle(color: Colors.white)),
         ),
         body: HomeContent(),
       ),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }

}
//水平列表
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      child: ListView(
        scrollDirection:Axis.horizontal,
        children: <Widget>[
            Container(
               width: 200,
               child: ListView(
                 children: <Widget>[
                   Image.network('https://www.itying.com/images/flutter/1.png'),
                   Text('我是一个标题',textAlign: TextAlign.center,)
                 ],
               ),
            ),
          Container(
            width: 200,
            child: ListView(
              children: <Widget>[
                Image.network('https://www.itying.com/images/flutter/2.png'),
                Text('我是一个标题')
              ],
            ),
          ),
          Container(
            width: 200,
            child: ListView(
              children: <Widget>[
                Image.network('https://www.itying.com/images/flutter/3.png'),
                Text('我是一个标题')
              ],
            ),
          ),
          Container(
            width: 200,
            child: ListView(
              children: <Widget>[
                Image.network('https://www.itying.com/images/flutter/4.png'),
                Text('我是一个标题')
              ],
            ),
          ),
          Container(
            width: 200,
            child: ListView(
              children: <Widget>[
                Image.network('https://www.itying.com/images/flutter/5.png'),
                Text('我是一个标题')
              ],
            ),
          ),
          Container(
            width: 200,
            child: ListView(
              children: <Widget>[
                Image.network('https://www.itying.com/images/flutter/6.png'),
                Text('我是一个标题')
              ],
            ),
          )
        ],
      ),
    );
  }

}
