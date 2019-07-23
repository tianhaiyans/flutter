import 'package:flutter/material.dart';
import 'res/data.dart';
import 'pages/myTabs.dart';
//void main(){
//  runApp(MyApp());
//}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        body: tabVeiw(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,

      ),
    );
  }

 Widget tabVeiw() {
   return DefaultTabController(
     length: 5,
     child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.all(50),
                tabs: <Widget>[
                  Text('语文'),
                  Text('数学'),
                  Text('地理'),
                  Text('物理'),
                  Text('化学')
                ],
              ),
              height: 200,
            ),
            Container(
              height: 200,
              child: TabBarView(
                children: <Widget>[
                  Text('11111'),
                  Text('22222'),
                  Text('33333'),
                  Text('44444'),
                  Text('55555')
                ],
              ),
            )
          ],
        )
   );
 }
}

//切换底部导航栏的页面跳转