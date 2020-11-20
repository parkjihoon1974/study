import 'package:flutter/material.dart';

void main() => runApp(ImageDemo());

class ImageDemo extends StatelessWidget{
  static const String _title= "Image 위젯 데모";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title : _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network('https://www.intelrealsense.com/wp-content/uploads/2019/12/lidar_technology_640px.jpg'),
              Image.asset('assets/snow.png'),
              Image.asset('assets/real.png'),

            ]
        )
      )
    );
    //throw UnimplementedError();
  }
}