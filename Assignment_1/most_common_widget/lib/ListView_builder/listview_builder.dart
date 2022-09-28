import'package:flutter/material.dart';
import 'package:most_common_widget/ListView_builder/map.dart';
class ListView_builder extends StatefulWidget {
  const ListView_builder({super.key});
  
  @override
  State<ListView_builder> createState() => _ListView_builderState();
}

class _ListView_builderState extends State<ListView_builder> {
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(8),
      child: Scaffold(
        appBar:AppBar(
          title:Text("ListView_Builder"),
          centerTitle:true,
        ),
        body: ListView.builder(
          itemCount:map.data.length ,
          itemBuilder: ((context, index){
           return  ListTile(
            title: Text(map.data[index]['Name']),
            subtitle: Text(map.data[index]['Occupation']),
            leading: CircleAvatar(child:Text(map.data[index]['Id'].toString())),
           );
          }),
          ),
      ),
    );
  }
}