import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {


  @override
  Widget build(BuildContext context) {
  
  final double mediaWidth = MediaQuery.of(context).size.width;
  final double mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Mapa'),),
      body: SafeArea(
        child: Container(
          height: mediaHeight,
          width: mediaWidth,
          //padding: EdgeInsets.symmetric(vertical:60 , horizontal:20 ),
          margin: EdgeInsets.symmetric(vertical: mediaWidth*0.1, horizontal: mediaHeight*0.025),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
