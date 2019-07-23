import 'package:flutter/material.dart';

//void main() {
//  runApp(new FadeAppTest());
//}

class FadeAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fade Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyFadeTest(title: 'Fade Demo'),
    );
  }
}

class MyFadeTest extends StatefulWidget {
  MyFadeTest({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State createState() => new _MyFadeTest();
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  AnimationController controller;//动画控制器
  CurvedAnimation curved;//曲线动画，动画插值，
  bool forward = true;

  @override
  void initState() {//初始化，当当前widget被插入到树中时调用
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: const Duration(seconds: 1));
    curved = new CurvedAnimation(parent: controller, curve: Curves.linear);//模仿小球自由落体运动轨迹
//    controller.forward();//放在这里开启动画 ，打开页面就播放动画

    //只显示动画一次，根据调用setState的打印情况就会知道。重载就会使其激活，自己的见解，需思量
//    controller.forward();
    //重复不断的效果，调用setState的打印效果显示
//    controller.repeat();
    //重置起点
    controller.reset();
    //开启
    controller.forward();
    controller.addStatusListener((status){
      if (status == AnimationStatus.completed) {
        //动画从 controller.forward() 正向执行 结束时会回调此方法
        print("status is completed");
        //重置起点
        controller.reset();
        //开启
        controller.forward();
      }
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FadeTest'),
      ),
      body: new Center(
//        child: new RotationTransition(//旋转动画
//          turns: curved,
//          child: new FlutterLogo(
//            size: 200.0,
//          ),
//
//        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: 200,
              height:200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Icon(
                Icons.bluetooth,
                size: 50,
                color: Color.fromRGBO(132, 189, 241, 1),
              ),
            ),
            Positioned(
              child: RotationTransition(
                turns: curved,
                 alignment: Alignment.topLeft,
                child: Image.asset('image/saomiaomian.png',width: 80,),
              ),
              right: 20,
              top: 100,
            )
          ],
        ),


      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: () {
//          if (forward)
//            controller.forward();//向前播放动画
//          else
//            controller.reverse();//向后播放动画
//          forward = !forward;
//        },
//        tooltip: 'fade',
//        child: new Icon(Icons.track_changes),
//      ),
    );
  }
}