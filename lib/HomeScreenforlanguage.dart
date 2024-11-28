import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenForLanguage extends StatefulWidget {
  const HomeScreenForLanguage({super.key});

  @override
  State<HomeScreenForLanguage> createState() => _HomeScreenForLanguageState();
}

class _HomeScreenForLanguageState extends State<HomeScreenForLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,centerTitle: true,
        title: Text('Getx toturial'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale('en','US'));
              }, child: Text("English")),SizedBox(width: 20,),
              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale('ur','PK'));
              }, child: Text("Urdu")),SizedBox(width: 20,),OutlinedButton(onPressed: () {
                Get.updateLocale(Locale('hi', 'IN'));

              }, child: Text("Hindi"))
            ],
          )
        ],
      ),
    );
  }
}
