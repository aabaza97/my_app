import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_app/Pages/home_page.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      home: HomePage()
    );
  }
}
