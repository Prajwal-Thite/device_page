import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'pages/devices.dart';
import 'pages/alerts.dart';
import 'pages/monitor.dart';
import 'pages/profile.dart';



void main() {
  runApp(MaterialApp(
    home: Internship(),
  ));
}

class Internship extends StatefulWidget {
  @override
  _InternshipState createState() => _InternshipState();
}

class _InternshipState extends State<Internship> {

  List<Widget> _screens = [
    Monitor(),
    Devices(),
    Alerts(),
    Profile(),
  ];

  List<BottomNavigationBarItem> items;

  int _selectedIndex = 0;
  void _onPageChanged(int index){
   setState(() {
     _selectedIndex = index;
   });
  }

  PageController _pageController = PageController();

  void _itemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:PageView(
            controller: _pageController,
            children: _screens,
            onPageChanged: _onPageChanged,
            physics: NeverScrollableScrollPhysics(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: _itemTapped,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.red[400],
            unselectedItemColor: Colors.grey[600],
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
              icon: Icon(Icons.monitor, color: _selectedIndex == 0?Colors.red[400]:Colors.grey[600],),
          title: Text('Monitor',style: TextStyle(color:_selectedIndex == 0?Colors.red[400]:Colors.grey[600], ),),


          ),


              BottomNavigationBarItem(icon: Badge(
              badgeContent: Text('${6}',
              style: TextStyle(
              color: Colors.white,
              ),),
              showBadge: true,
              badgeColor: Colors.red,
              elevation: 0.0,
              position: BadgePosition.topEnd(top: -10,end: -17),
              borderRadius: BorderRadius.circular(8),
              child: Icon(Icons.router,
              color: _selectedIndex == 1?Colors.red[400]:Colors.grey[600],),
              ),
        title: Text('Devices',style: TextStyle(color:_selectedIndex == 1?Colors.red[400]:Colors.grey[600], ),),
                backgroundColor: Colors.red
              ),

              BottomNavigationBarItem(icon: Icon(Icons.assessment_outlined, color: _selectedIndex == 2?Colors.red[400]:Colors.grey[600],),
                title: Text('Alerts',style: TextStyle(color:_selectedIndex == 2?Colors.red[400]:Colors.grey[600], ),),),

              BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded, color: _selectedIndex == 3?Colors.red[400]:Colors.grey[600],)
                  ,title: Text('Profile',style: TextStyle(color:_selectedIndex == 3?Colors.red[400]:Colors.grey[600], ),),),


            ],
          ),
    );

  }
}

