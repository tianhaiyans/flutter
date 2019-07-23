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
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//      children: <Widget>[
//         IconContent(Icons.home,size: 52,color: Colors.blue,),
//         IconContent(Icons.satellite,size: 52,color: Colors.yellow,),
//         IconContent(Icons.map,size: 52,color: Colors.cyanAccent,),
//      ],
//    );



//    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//      children: <Widget>[
//        IconContent(Icons.home,size: 52,color: Colors.blue,),
//        IconContent(Icons.satellite,size: 52,color: Colors.yellow,),
//        IconContent(Icons.map,size: 52,color: Colors.cyanAccent,),
//      ],
//    );


    return Row(

      children: <Widget>[
         Expanded(
           flex: 1,
           child: IconContent(Icons.home,size: 52,color: Colors.blue,),
         ),
        Expanded(
          flex: 2,
          child: IconContent(Icons.satellite,size: 52,color: Colors.yellow,),
        ),
        Expanded(
          flex: 1,
          child: IconContent(Icons.satellite,size: 52,color: Colors.orange,),
        )
      ],
    );

  }
}


class IconContent extends StatelessWidget{
  double size=42;
  Color color=Colors.red;
  IconData icon;
  IconContent(this.icon, {this.color,this.size}){

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
       width: 100,
       height: 100,
      color:this.color,
      child: Center(
         child: Icon(this.icon,size: this.size,color: Colors.white,),
      ),
    );
  }

}