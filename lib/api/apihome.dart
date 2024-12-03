import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementgetx/api/login_controller.dart';

class ApiHome extends StatefulWidget {
  const ApiHome({super.key});

  @override
  State<ApiHome> createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {
  LoginController controller = Get.put(LoginController());

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("API Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: 'Enter email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
              ),
            ),),SizedBox(height: 20,),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: 'Pasasword',border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              ),
            ),
            SizedBox(height: 50),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child: controller.loading.value ? CircularProgressIndicator():Container(
                  color: Colors.green,
                  height: 45,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
