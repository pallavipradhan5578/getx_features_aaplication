import 'package:flutter/material.dart';import 'package:get/get.dart';
class Third_Page extends StatelessWidget {
  const Third_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              }, child: Center(child: Text("Go back"))),
        ),
      ],
    )

    );
  }
}
