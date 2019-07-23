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
    //AspectRatio控制组件高度
//    return AspectRatio(
//       aspectRatio: 3.0/1.0,
//       child: Container(
//          color: Colors.red,
//          child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
//       ),
//    );

  //卡片文字
//    return ListView(
//      children: <Widget>[
//        Card(
//          margin: EdgeInsets.all(10),
//          child: Column(
//            children: <Widget>[
//              ListTile(
//                title: Text('张三',style: TextStyle(fontSize: 24),),
//                subtitle: Text('高级工程师'),
//              )
//            ],
//          ),
//        ),
//      ],
//    );

  //图文卡片
  return ListView(
    children: <Widget>[
      Card(
         margin: EdgeInsets.all(10),
         child: Column(
            children: <Widget>[
               AspectRatio(
                  aspectRatio:16/9,
                  child:Container(
                    child:  Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover),

                  ) ,
               ),
               ListTile(
                 leading:CircleAvatar(//专门处理头像的
                     backgroundImage:NetworkImage('https://www.itying.com/images/flutter/1.png')
                 ),
                 title: Text('我是一个标题'),
                 subtitle: Text('我是第一个标题的内容'),
               )
            ],
         ),
      ),
    ],
  );

  }

}
