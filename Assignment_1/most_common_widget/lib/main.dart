import 'package:flutter/material.dart';
import 'package:most_common_widget/ListView_builder/listview_builder.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListView_builder(),
    );
  }
}