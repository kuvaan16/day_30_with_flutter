import 'package:day_30_with_flutter/splash.dart';
import 'package:day_30_with_flutter/talabat.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'robot'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/talabat': (context) => Talabat(),
        '/homepage': (context) => HomePage(),
        
      },
    );
  }
}

