import 'package:flutter/material.dart';
import 'package:internship/tracker.dart';
import '../search.dart';
import '../tracker_card.dart';
import 'all.dart';
import 'online.dart';
import 'offline.dart';
import 'inactive.dart';


class Devices extends StatefulWidget {
  @override
  _DevicesState createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {

  List<Tracker> trackers = [
    Tracker(name: "TRACKSTER_TESTING_0", time:"18-02-21, 12:06:55 pm",address: 'Address: Gat No.33 & Gat No.34/2, Loni Kalbhor, Pune-, Sholapur Highway, behind Shivshakti Traders, Pune, Maharashtra 412201'),
    Tracker(name: "TRACKSTER_TESTING_1", time:"18-02-21, 12:00:35 pm",address: 'Address: S No 3541, Matrix Square Petrol Pump, Katraj Bypass Rd, Near, Beldare, Pune, Maharashtra 411046'),
    Tracker(name: "TRACKSTER_TESTING_2", time:"18-02-21, 10:30:15 pm",address: 'Address: 1st Floor Fun & Shop Mall, Pune - Solapur Rd, behind Big-Bazar, Fatima Nagar, Pune, Maharashtra 411040'),
    Tracker(name: "TRACKSTER_TESTING_3", time:"17-02-21, 19:06:38 pm",address: 'Address: S No 207, Viman Nagar Road, Phoenix Road, Viman Nagar, Pune, Maharashtra 411014'),
    Tracker(name: "TRACKSTER_TESTING_4", time:"17-02-21, 16:45:23 pm",address: 'Address: railway station, Solapur highway, lonikalbhor MIT college corner, near, Loni Kalbhor, Maharashtra 412201'),
    Tracker(name: "TRACKSTER_TESTING_5", time:"17-02-21, 14:53:39 pm",address: 'Address: shop. 7, Sai Park, Near Angel School, Kadamwakwasti, Loni K., Sambhaji Nagar, Pune, Maharashtra 412201'),

  ];



  List<Widget> statepage = [
    All(),
    Online(),
    Offline(),
    InActive(),
  ] ;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 4,
        child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
        title: Text('My Devices'),
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    actions: [IconButton(icon: Icon(Icons.search), onPressed: (){
    showSearch(context: context, delegate: Search());
    })],
    bottom: TabBar(
    isScrollable: true,
    tabs: [
    Tab(text: 'ALL(${trackers.length})',),
    Tab(text: 'ONLINE(${trackers.length})',),
    Tab(text: 'OFFLINE(0)',),
    Tab(text: 'INACTIVE(0)',),
    ],
    ),
    ),
          body: TabBarView(
            children: statepage,
          ),
        ),
    );
  }
}
