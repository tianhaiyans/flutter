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
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('首页'),
              ),
              BottomNavigationBarItem(
                   icon: Icon(Icons.add_call),
                   title: Text('通讯录'),
              ),
              BottomNavigationBarItem(
                 icon: Icon(Icons.supervised_user_circle),
                 title: Text('我的')
              )
            ]
        ),
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
  List list=new List();
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
            Column(
              children:this.list.map((value){
                return ListTile(
                    title: Text(value),
                );
              }).toList()
            ),

            RaisedButton(
                 child: Text('按钮'),
                onPressed: (){
                   setState(() {
                     this.list.add('你添加了我');
                   });

                },
            ),
        ],
    );
  }
}

