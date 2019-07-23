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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(

        crossAxisCount: 3,
        childAspectRatio:1.5,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/5.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:  Image.network('https://www.itying.com/images/flutter/6.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:  Image.network('https://www.itying.com/images/flutter/6.png',fit: BoxFit.cover,),
          ),


        ],

      ),
    );
  }



}