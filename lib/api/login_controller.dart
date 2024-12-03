import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
class LoginController extends GetxController {
final emailController = TextEditingController().obs;
final passwordController = TextEditingController().obs;
RxBool loading =false.obs;
 void loginApi() async {
   loading.value=true;
   try {
     final response = await post(Uri.parse('https://reqres.in/api/login'),
         body: {
           "email": emailController.value.text,
           "password": passwordController.value.text
         });
     var data = jsonDecode(response.body);
     //print(data);
    // print(response.statusCode);
     if (response.statusCode == 200) {loading.value=false;
       Get.snackbar('Login Successfully',data['congratulations']);
     } else { loading.value=false;
Get.snackbar(backgroundColor: Colors.blue,snackPosition: SnackPosition.BOTTOM,'Login Failed',data['error'],);
     }
   } catch (e) { loading.value=false;
Get.snackbar('Exception',e.toString());
   }
 }
}
 //"email": "eve.holt@reqres.in",
 //"password": "cityslicka"
