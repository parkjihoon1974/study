import 'package:flutter/material.dart';

void main() => runApp(ContainerDemo());

class ContainerDemo extends StatelessWidget{
  static const String _title = "Container 위젯 데모";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
          child: Text('단순 컨테이너'),
          padding: EdgeInsets.only(left: 40, top: 40, bottom: 80),
        ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 130, horizontal:150),
            child: Container(
              color: Colors.yellow,
              child: Text('중첩 컨테이너'),
            ),
          ),
            ],
        )
      ),
    );

  }
}