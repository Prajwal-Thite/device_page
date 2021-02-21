import 'package:flutter/material.dart';
import 'package:internship/tracker.dart';
import 'package:internship/tracker_card.dart';



class Online extends StatefulWidget {
  @override
  _OnlineState createState() => _OnlineState();
}

class _OnlineState extends State<Online> {

  List<Tracker> trackers = [
    Tracker(name: "TRACKSTER_TESTING_0", time:"18-02-21, 12:06:55 pm",address: 'Address: Gat No.33 & Gat No.34/2, Loni Kalbhor, Pune-, Sholapur Highway, behind Shivshakti Traders, Pune, Maharashtra 412201'),
    Tracker(name: "TRACKSTER_TESTING_1", time:"18-02-21, 12:00:35 pm",address: 'Address: S No 3541, Matrix Square Petrol Pump, Katraj Bypass Rd, Near, Beldare, Pune, Maharashtra 411046'),
    Tracker(name: "TRACKSTER_TESTING_2", time:"18-02-21, 10:30:15 pm",address: 'Address: 1st Floor Fun & Shop Mall, Pune - Solapur Rd, behind Big-Bazar, Fatima Nagar, Pune, Maharashtra 411040'),
    Tracker(name: "TRACKSTER_TESTING_3", time:"17-02-21, 19:06:38 pm",address: 'Address: S No 207, Viman Nagar Road, Phoenix Road, Viman Nagar, Pune, Maharashtra 411014'),
    Tracker(name: "TRACKSTER_TESTING_4", time:"17-02-21, 16:45:23 pm",address: 'Address: railway station, Solapur highway, lonikalbhor MIT college corner, near, Loni Kalbhor, Maharashtra 412201'),
    Tracker(name: "TRACKSTER_TESTING_5", time:"17-02-21, 14:53:39 pm",address: 'Address: shop. 7, Sai Park, Near Angel School, Kadamwakwasti, Loni K., Sambhaji Nagar, Pune, Maharashtra 412201'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: trackers.map((tracker) => TrackerCard(tracker : tracker)).toList(),
        ),
      ),
    );
  }
}
