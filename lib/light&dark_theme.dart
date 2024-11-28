import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementgetx/navigation.dart';

class Second_One extends StatefulWidget {
final String name;
  const Second_One({Key? key,required this.name}):super(key: key);

  @override
  State<Second_One> createState() => _Second_OneState();
}

class _Second_OneState extends State<Second_One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Second One"+widget.name),
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
                    title: 'Delete chat',
                    middleText: 'Do you want to delete this chat?',
                    //textConfirm: 'Yes',
                    //textCancel: 'Calcle'
                    confirm: TextButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          Get.back();
                        },
                        child: Text("Ok")),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Cancle")),
                    content: Column(
                      children: [
                        Text("Cancle"),
                        Text("Exit"),
                        Text("Exit"),

                      ],
                    ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Bottom Sheet'),
              subtitle: Text("GetX dialog alert with getX"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),TextButton(
                          onPressed: () {Get.to(Second_Two());
                            // Navigator.push(context,
                            //  MaterialPageRoute(builder: (context)=>Second_Page()));

                          }, child: Center(child: Text("Go to next page"))),
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
