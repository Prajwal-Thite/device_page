import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/stop.dart';



class ReportCard extends StatelessWidget {

  final Stop stops;
  ReportCard({this.stops});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0) ,
      child: Padding(padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on,size: 24,),
              SizedBox(width: 10,),
              Text('Stop Address',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[900]
              ),
              ),
              ],
          ),
          SizedBox(height: 10,),
          Divider(height: 2.0,
          thickness: 0.25,
          color: Colors.grey[600],),
          SizedBox(height: 10,),
          Text(stops.stpaddr,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[600]
          ),),
          SizedBox(height: 30,),
          Row(
            children: [
              Text('From :${stops.from}',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey[600]
              ),
              ),
              SizedBox(width: 40,),
              Text('To :${stops.to}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),),
            ],
          ),
        ],
      ),
      ),
    );
  }
}

