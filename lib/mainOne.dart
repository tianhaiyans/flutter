import 'package:flutter/material.dart';

//void main(){
//  runApp(
//    MyApp()
//  );
//}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text(
           'flutter'
         )
       ),
       body: HomeContent(),
     ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),

    );
  }
}
//头部导航
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          '我是一个文本',
        ),
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
             color: Colors.blue,
             width: 2,
          )
        ),
      )
    );
  }

}
