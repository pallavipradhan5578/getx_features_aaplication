import 'package:flutter/material.dart';

class SpacerWidget extends StatefulWidget {
  const SpacerWidget({super.key});

  @override
  State<SpacerWidget> createState() => _SpacerWidgetState();
}

class _SpacerWidgetState extends State<SpacerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spacer Example')),
      body: Row(
        children: [
          Container(color: Colors.red, width: 50, height: 50),
          Spacer(), // Adds flexible space
          Container(color: Colors.green, width: 50, height: 50),
          Spacer(), // Adds another flexible space
          Container(color: Colors.blue, width: 50, height: 50),
        ],
      ),
    );
  }
}

