import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementgetx/getxstate.dart';
import 'package:statemanagementgetx/light&dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),debugShowCheckedModeBanner: false,
    );
  }
}

