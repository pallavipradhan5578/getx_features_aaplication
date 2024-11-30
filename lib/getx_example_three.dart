import 'package:flutter/material.dart';
class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key, required String name});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  bool notification = false;
  void initState(){
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Example Three'),
      ),
      body:Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Notifications"),
            Switch(value: false, onChanged: (valve){
              notification=valve;
              setState(() {
                
              });
            })
          ],)
        ],
      ),
    );
  }
}
