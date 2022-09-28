 import'package:flutter/material.dart';
 import'package:timepick_widget/time_picker_scree.dart';
 void main()=>runApp(MyApp());
 class MyApp extends StatelessWidget {
   const MyApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TimepickerScreen()
     );
   }
 }