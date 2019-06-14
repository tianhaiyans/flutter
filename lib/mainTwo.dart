
import 'package:flutter/material.dart';

//void main(){
//  runApp(
//      MyApp()
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
//边框
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          child: Text(
            '我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
            textAlign: TextAlign.center,
            textScaleFactor: 2,
            maxLines: 2,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24,
            ),
          ),
          width: 500,
          height: 500,
          decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(50)
              )
          ),
          padding: EdgeInsets.all(20),
        )
    );
  }

}
