import 'package:flutter/material.dart';
import 'package:internship/stop.dart';
import 'package:internship/report_card.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {

  int _currentindex = 2;

  List<Stop> stop = [
    Stop(stpaddr: 'Address: Gat No.33 & Gat No.34/2, Loni Kalbhor, Pune-, Sholapur Highway, behind Shivshakti Traders, Pune, Maharashtra 412201',from: '18-02-21, 12:06:55 pm',to: '18-02-21, 13:46:55 pm'),
    Stop(stpaddr: 'Address: railway station, Solapur highway, lonikalbhor MIT college corner, near, Loni Kalbhor, Maharashtra 412201',from: '17-02-21, 16:45:23 pm' ,to: '17-02-21, 20:55:23 pm'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.assignment),
        elevation: 0.75,
        backgroundColor: Colors.red[400],


      ),
        appBar: AppBar(
        title: Text('Reports'),
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: stop.map((stops) => ReportCard(stops : stops)).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.article_rounded),
            title: Text('Summary'),

          ),


          BottomNavigationBarItem(icon: Icon(Icons.arrow_upward_sharp),
            title: Text('Trips'),
          ),

          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined),title: Text('Stops'),),

          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),title: Text('Events')),



        ],
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
