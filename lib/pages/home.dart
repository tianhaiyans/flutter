import 'package:flutter/material.dart';
import 'search.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('我是一个按钮'),
         onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder:(content)=>search(titles: '你是想搜索我吗？',)
                )
              );
         },
    );
  }
}
