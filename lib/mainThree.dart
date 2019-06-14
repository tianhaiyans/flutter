import 'package:flutter/material.dart';
//
//void main(){
//  runApp(
//      MyApp()
//  );
//}
//插入图片
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.network('https://www.itying.com/images/flutter/1.png',
         fit: BoxFit.cover,
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
      ),
    );

  }
}