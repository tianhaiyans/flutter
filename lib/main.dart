import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bezier Chart - Numbers"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black54,
              Colors.black87,
              Colors.black87,
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Bezier Chart - Numbers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            Center(
              child: Card(
                elevation: 12,
                clipBehavior: Clip.hardEdge,
                child: Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: BezierChart(
                    bezierChartScale: BezierChartScale.CUSTOM,
                    xAxisCustomValues: const [0, 3, 10, 15, 20, 25, 30, 35],
                    series: const [
                      BezierLine(
                        label: "Custom 1",
                        data: const [
                          DataPoint<double>(value: 10, xAxis: 0),
                          DataPoint<double>(value: 130, xAxis: 5),
                          DataPoint<double>(value: 50, xAxis: 10),
                          DataPoint<double>(value: 150, xAxis: 15),
                          DataPoint<double>(value: 75, xAxis: 20),
                          DataPoint<double>(value: 0, xAxis: 25),
                          DataPoint<double>(value: 5, xAxis: 30),
                          DataPoint<double>(value: 45, xAxis: 35),
                        ],
                      ),
                      BezierLine(
                        lineColor: Colors.blue,
                        lineStrokeWidth: 2.0,
                        label: "Custom 2",
                        data: const [
                          DataPoint<double>(value: 5, xAxis: 0),
                          DataPoint<double>(value: 50, xAxis: 5),
                          DataPoint<double>(value: 30, xAxis: 10),
                          DataPoint<double>(value: 30, xAxis: 15),
                          DataPoint<double>(value: 50, xAxis: 20),
                          DataPoint<double>(value: 40, xAxis: 25),
                          DataPoint<double>(value: 10, xAxis: 30),
                          DataPoint<double>(value: 30, xAxis: 35),
                        ],
                      ),
                      BezierLine(
                        lineColor: Colors.black,
                        lineStrokeWidth: 2.0,
                        label: "Custom 3",
                        data: const [
                          DataPoint<double>(value: 5, xAxis: 0),
                          DataPoint<double>(value: 10, xAxis: 5),
                          DataPoint<double>(value: 35, xAxis: 10),
                          DataPoint<double>(value: 40, xAxis: 15),
                          DataPoint<double>(value: 40, xAxis: 20),
                          DataPoint<double>(value: 40, xAxis: 25),
                          DataPoint<double>(value: 9, xAxis: 30),
                          DataPoint<double>(value: 11, xAxis: 35),
                        ],
                      ),
                    ],
                    config: BezierChartConfig(
                      verticalIndicatorStrokeWidth: 2.0,
                      verticalIndicatorColor: Colors.black12,
                      showVerticalIndicator: true,
                      contentWidth: MediaQuery.of(context).size.width * 2,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
