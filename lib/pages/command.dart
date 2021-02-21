import 'package:flutter/material.dart';

class Command extends StatefulWidget {
  @override
  _CommandState createState() => _CommandState();
}

class _CommandState extends State<Command> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('command')),
    );
  }
}
