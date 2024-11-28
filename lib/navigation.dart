import 'package:flutter/material.dart';import 'package:get/get.dart';
class Second_Two extends StatelessWidget {
  const Second_Two({super.key});

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
