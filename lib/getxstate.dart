import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'light&dark_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("GetX Toturails"),
      ),
      body: Column(
        children: [TextButton(onPressed: (){
          //Get.to(Second_One());
          Get.to(Second_One(name:'Asif taj'));
        }, child: Text("Go to Second page")),],
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,onPressed: () {
        Get.snackbar("Pradhan", "Subscribe to my channel",
            icon:  Icon(Icons.add_box),
            onTap: (snap){},mainButton: TextButton(onPressed: (){

            }, child: Text("Click")),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}

