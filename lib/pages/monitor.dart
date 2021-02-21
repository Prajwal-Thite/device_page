import 'package:flutter/material.dart';
import '../search.dart';

class Monitor extends StatefulWidget {
  @override
  _MonitorState createState() => _MonitorState();
}

class _MonitorState extends State<Monitor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
        title: Text('My Devices'),
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    actions: [IconButton(icon: Icon(Icons.search), onPressed: (){
    showSearch(context: context, delegate: Search());
    })],
    ),
      body: Center(child: Text('Monitor')),
    );
  }
}
