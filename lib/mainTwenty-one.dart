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

  return  Wrap(
       spacing: 10,
       runSpacing: 10,
      children: <Widget>[
        OutlineButton(
          child: Text('第一个'),
          textColor:Theme.of(context).accentColor ,
          highlightedBorderColor: Colors.orange,
          borderSide: BorderSide(color: Colors.red),
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(50.0)),),
          color:Colors.white,
          onPressed: (){},
        ),
        RaisedButton(
          child: Text('我才是第一个'),
          textColor:Theme.of(context).accentColor ,
          onPressed: (){},
        ),
        RaisedButton(
          child: Text('你是第一个'),
          textColor:Theme.of(context).accentColor ,
          onPressed: (){},
        ),
        RaisedButton(
          child: Text('第三个'),
          textColor:Theme.of(context).accentColor ,
          onPressed: (){},
        ),
        RaisedButton(
          child: Text('第四个'),
          textColor:Theme.of(context).accentColor ,
          onPressed: (){},
        ),
        RaisedButton(
          child: Text('第五个'),
          textColor:Theme.of(context).accentColor ,
          onPressed: (){},
        ),
      ],
  );
  }
}
