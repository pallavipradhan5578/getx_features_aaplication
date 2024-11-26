import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("GetX Toturails"),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,onPressed: () {
        Get.snackbar("Pradhan", "Subscribe to my channel",
            icon:  Icon(Icons.add_box),
            onTap: (snap){},mainButton: TextButton(onPressed: (){}, child: Text("Click")),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}
