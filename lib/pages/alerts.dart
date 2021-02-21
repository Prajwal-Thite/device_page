import 'package:flutter/material.dart';
import '../search.dart';

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
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
      body: Center(child: Text('Alerts')),
    );
  }
}
