import 'dart:html';

import'package:flutter/material.dart';
class orientationBuilder extends StatefulWidget {
  const orientationBuilder({super.key});

  @override
  State<orientationBuilder> createState() => _orientationBuilderState();
}

class _orientationBuilderState extends State<orientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum:EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text("OrientationBuilder"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body:OrientationBuilder(
          builder:(context, orientation){
            if(Orientation == Orientation.portrait){
              return protraitBody();
            } 
            return LandscapBody();
          },
        ) ,
      ),
    );
  }
  Widget protraitBody(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange,
      child: Center(child: Text("This is Protrait view")),
    );
  }
  Widget LandscapBody(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Center(child: Text("This is Landscape view")),
    );
  }
}