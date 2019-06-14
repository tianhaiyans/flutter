import 'package:flutter/material.dart';

//void main(){
//   runApp(){
//     MyApp();
//   }
//}

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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
         children: <Widget>[
           Image.network('https://www.itying.com/images/flutter/1.png'),
           Container(
             child: Text('我是一个标题',textAlign: TextAlign.center,)
           ),
           Image.network('https://www.itying.com/images/flutter/2.png'),
           Container(
               child: Text('我是一个标题',textAlign: TextAlign.center,)
           ),
           Image.network('https://www.itying.com/images/flutter/3.png'),
           Container(
               child: Text('我是一个标题',textAlign: TextAlign.center,)
           ),
           Image.network('https://www.itying.com/images/flutter/4.png'),
           Container(
               child: Text('我是一个标题',textAlign: TextAlign.center,)
           ),
           Image.network('https://www.itying.com/images/flutter/5.png'),
           Container(
               child: Text('我是一个标题',textAlign: TextAlign.center,)
           ),
           Image.network('https://www.itying.com/images/flutter/6.png'),
           Container(
               child: Text('我是一个标题',textAlign: TextAlign.center,)
           ),
           Image.network('https://www.itying.com/images/flutter/7.png'),
           Container(
               child: Text('我是一个标题',textAlign: TextAlign.center,)
           ),
         ],
    );
  }

}