import 'package:demo_prj/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final Controller c= Get.put(Controller());
    return MaterialApp(
      title: "GetX ",
      home: Scaffold(
        body:Column(
          children: [
        Obx(()=>Text("count${c.count}"),), 
         ElevatedButton(onPressed: (){
          c.increment();
         }, child: Text("press")),
          ],
        ) ,
      ),
    );
  }
}