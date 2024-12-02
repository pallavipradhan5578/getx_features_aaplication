import 'dart:io';

import 'package:flutter/material.dart';import 'package:get/get.dart';

import 'package:statemanagementgetx/imagepicker/image_picker_controller.dart';
class ImageHome extends StatefulWidget {
  const ImageHome({super.key});

  @override
  State<ImageHome> createState() => _ImageHomeState();
}

class _ImageHomeState extends State<ImageHome> {

  ImagePickerController controller =Get.put(ImagePickerController());
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Image Home'),
      ),
      body:Obx((){
        return Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(radius: 40,backgroundImage: controller.imagePath.isNotEmpty?FileImage(File(controller.imagePath.toString())):null
              ),
            ),TextButton(onPressed: (){
              controller.getImage();
            }, child: Text("Pick Image")),
          ],
        );
      }),
    );
  }
}
