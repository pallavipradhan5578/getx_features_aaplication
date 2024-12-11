import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertDialogPage1 extends StatefulWidget {
  const AlertDialogPage1({super.key});

  @override
  State<AlertDialogPage1> createState() => _AlertDialogPage1State();
}

class _AlertDialogPage1State extends State<AlertDialogPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: () {
                Get.snackbar('Pallu', 'subscribe to my channel',
                    backgroundColor: Colors.blue,
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM);
              })
            ],
          ),
        ));
  }
}
