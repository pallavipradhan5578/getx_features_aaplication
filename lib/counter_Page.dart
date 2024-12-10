import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementgetx/counter_controller.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required String name});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CounterController controller=Get.put (CounterController());
  int count = 0;

  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ ElevatedButton(
            onPressed: () {
              setState(() {
                count--;
              });
            },
            child: Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
          ),SizedBox(height: 30,),
            Text(
              'Current count: $count',
              style: TextStyle(fontSize: 30),
            ),SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
            ),
          ],
        ),
      ),
    );
  }
}
