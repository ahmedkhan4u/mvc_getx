import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_getx/views/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      title: "GETX MVC",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("GETX MVC"),
            centerTitle: true,
          ),
          body: HomeScreen()),
    );
  }
}
