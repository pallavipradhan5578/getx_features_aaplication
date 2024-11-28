import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Getx tutorial"),
        ),
        body: Column(
          children: [
            Container(
             // height: MediaQuery.of(context).size.height * .7,
              height: Get.height*.2,width:Get.width*.8 ,
              color: Colors.red,
              child: Center(
                child: Text('Center'),
              ),
            ),Container(
              // height: MediaQuery.of(context).size.height * .7,
              height: height*.1,width:Get.width*.8 ,
              color: Colors.green,
              child: Center(
                child: Text('Center'),
              ),
            ),
          ],
        ));
  }
}
