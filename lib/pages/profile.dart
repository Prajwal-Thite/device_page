import 'package:flutter/material.dart';
import '../search.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
      body: Center(child: Text('Profile')),
    );
  }
}
