import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Theme_Page extends StatelessWidget {
  const Theme_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("GetX Toturails"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text("GetX dialog alert with getX"),
              onTap: () {
                Get.defaultDialog(
                    titlePadding: EdgeInsets.only(top: 20),
                    contentPadding: EdgeInsets.all(20),
                    title: 'Delete chat',
                    middleText: 'Do you want to delete this chat?',
                    //textConfirm: 'Yes',
                    //textCancel: 'Calcle'
                    confirm: TextButton(onPressed: () {
                     // Navigator.pop(context);
                      Get.back();
                    }, child: Text("Ok")),
                    cancel:
                        TextButton(onPressed: () {}, child: Text("Cancle"))
                ,content: Column(
                  children: [ Text("Cancle") ,Text("Exit") ,Text("Exit")

                  ],
                )
                );
              },
            ),
          ), Card(
            child: ListTile(
              title: Text('GetX Bottom Sheet'),
              subtitle: Text("GetX dialog alert with getX"),
              onTap: () {
                Get.bottomSheet(Container(decoration: BoxDecoration(color: Colors.blue.shade200,borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),title: Text("Light theme"),onTap: (){
                          Get.changeTheme(ThemeData.light());
                      },
                      ),ListTile(
                        leading: Icon(Icons.dark_mode),title: Text("Dark theme"),onTap: (){
                          Get.changeTheme(ThemeData.dark());
                      },
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
