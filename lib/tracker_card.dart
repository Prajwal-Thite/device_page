
import 'package:flutter/material.dart';
import 'tracker.dart';
import 'pages/geo_fence.dart';
import 'pages/details.dart';
import 'pages/report.dart';
import 'pages/track.dart';
import 'pages/playback.dart';
import 'pages/command.dart';




class TrackerCard extends StatelessWidget {

  final Tracker tracker;
  TrackerCard({this.tracker});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0) ,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://img.icons8.com/color/2x/truck--v2.gif'),
                  backgroundColor: Colors.transparent,
                  radius: 24.0,
                ),
                SizedBox(width: 10.0,),
                Text(
                  tracker.name,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(width: 48.0,),
                FlatButton(onPressed: (){},
                  child: Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.grey[600]
                    ),
                  ),

                  color: Colors.green[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),

                ),
              ],

            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 60.0,),
                    Text(
                      tracker.time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                )

              ],
            ),
            SizedBox(height: 10.0,),
            Divider(
              color: Colors.grey[600],
              height: 2.0,
              thickness: 0.25
              ,
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Icon(Icons.access_time,
                color: Colors.green[800],
                size: 20,),
                SizedBox(width: 10,),
                Text(
                  'Status : RUNNING',
                  style: TextStyle(
                    color: Colors.green[800]
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Icon(Icons.location_on,
                color: Colors.red[300],
                size: 20,),
                SizedBox(width: 10.0,),
                Expanded(child: Text(tracker.address,
                  style: TextStyle(
                      color: Colors.grey[600]
                  ) ,))

              ],
            ),
            SizedBox(height: 10.0,),
            Divider(color: Colors.grey[600],
            height: 2.0,
            thickness: 0.25,),
            Row(
              children: [
                FlatButton.icon(onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => Details()));
                }, icon: Icon(Icons.web,size: 15,),
                           label: Text(
                                'Details',
                               style: TextStyle(
                               color: Colors.grey[600],
                               fontSize: 10,
                                ),
                                ),
                               shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey[600],
                               style: BorderStyle.solid,width: .75),
                               borderRadius: BorderRadius.circular(10))),


                SizedBox(width: 1.0,),

                FlatButton.icon(onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => Track()));
                }, icon: Icon(Icons.my_location_sharp,size: 15,),
                    label: Text(
                      'Track',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 10,
                      ),
                    ),
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey[600],
                        style: BorderStyle.solid,width: .75),
                        borderRadius: BorderRadius.circular(10))),

                SizedBox(width: 1.0,),


                FlatButton.icon(onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => Report()));
                }, icon: Icon(Icons.assignment,size: 15,),
                    label: Text(
                    'Report',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 10,
                      ),
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey[600],
                       style: BorderStyle.solid,width: .75),
    borderRadius: BorderRadius.circular(10))),


                SizedBox(width: 1.0,),

                FlatButton.icon(onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => PlayBack()));
                }, icon: Icon(Icons.edit_location,size: 15,),
                    label: Text(
                      'P-Back',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 10,
                      ),
                    ),
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey[600],
                        style: BorderStyle.solid,width: .75),
                        borderRadius: BorderRadius.circular(10))),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                  FlatButton.icon(onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => Command()));
                  }, icon: Icon(Icons.assistant_photo_rounded,size: 15,),
                      minWidth:150,
                      label: Text(
                        'Command',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 10,
                        ),
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey[600],
                          style: BorderStyle.solid,width: .75),
                          borderRadius: BorderRadius.circular(10))),

                  FlatButton.icon(onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => GeoFence()));
                  }, icon: Icon(Icons.attractions,size: 15,),
                      minWidth: 150,
                      label: Text(
                        'Geo Fence',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 10,
                        ),
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey[600],
                          style: BorderStyle.solid,width: .75),
                          borderRadius: BorderRadius.circular(10))),

            ],)

          ],
        ),
      ),
    );
  }
}