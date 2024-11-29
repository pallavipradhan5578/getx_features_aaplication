import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementgetx/HomeScreenforlanguage.dart';
import 'package:statemanagementgetx/getxstate.dart';
import 'package:statemanagementgetx/home_Screen.dart';
import 'package:statemanagementgetx/languages.dart';
import 'package:statemanagementgetx/light&dark_theme.dart';
import 'package:statemanagementgetx/navigation.dart';

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
      //locale:Locale('en','us') ,

      translations: Languages(),locale: Locale('en','US') ,
      fallbackLocale:Locale('en','US') ,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Second_One  (name: 'Pallavi',),debugShowCheckedModeBanner: false,getPages: [
        GetPage(name: '/', page: ()=>HomePage()),
      GetPage(name: '/', page: ()=> Second_One(name: 'Pallavi',)), GetPage(name: '/', page: ()=>Second_Two()),
    ],
    );
  }
}

