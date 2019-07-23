import 'package:flutter/material.dart';
//
//class search extends StatefulWidget {
//  @override
//  _searchState createState() => _searchState();
//}
//
//class _searchState extends State<search> {
//  String titles;
//  _searchState({this.titles='搜索'});
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text(this.titles,style: TextStyle(color: Colors.white),),
//        ),
//      body: Text('你搜索了我'),
//    );
//  }
//}
class search extends StatelessWidget {
  String titles;
  search({this.titles='搜索'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
         child: Text('返回'),
          onPressed: (){
          Navigator.of(context).pop();
      }),
       appBar: AppBar(
          title: Text(this.titles,style: TextStyle(color: Colors.white),),
       ),
      body: Text('你搜索了我'),
    );
  }
}
