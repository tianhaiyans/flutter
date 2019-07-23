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

    return Column(
        children: <Widget>[
           Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:  Container(
                    height: 200,
                    child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
                  ),
                ),
              ],
           ),
           SizedBox(height: 10,),
           Row(
              children: <Widget>[
                SizedBox(width: 10,),
                   Expanded(
                     flex: 2,
                     child: Container(
                       height: 180,
                       child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
                     ),
                   ),
                   SizedBox(width: 10,),
                   Expanded(
                     flex: 1,
                     child: Container(
                       height: 180,
                       child: ListView(
                          children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Container(

                                  height: 85,
                                  child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,),
                                ),
                              ),

                             Padding(
                               padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                               child:  Container(
                                 height: 85,
                                 child: Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,),
                               ),
                             ),

                          ],
                       )
                     ),
                   ),
              ],
           ),
        ],
    );

  }
}
