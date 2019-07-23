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

//自定义有状态组件
class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int sum=0;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
           Chip(
               label:  Text('${this.sum}'),
           ),
            RaisedButton(
                child: Text('nihao',style: TextStyle(color: Colors.white),),
                textColor: Theme.of(context).accentColor,
                onPressed: (){
                    setState(() {
                      this.sum++;
                      print(this.sum);
                    });

                },
            ),
        ],
    );
  }
}

