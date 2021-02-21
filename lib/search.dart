import 'package:flutter/material.dart';

class Search extends SearchDelegate<String>{

  final list = [
    "TRACKSTER_TESTING_0".toLowerCase(),
    "TRACKSTER_TESTING_1".toLowerCase(),
    "TRACKSTER_TESTING_2".toLowerCase(),
    "TRACKSTER_TESTING_3".toLowerCase(),
    "TRACKSTER_TESTING_4".toLowerCase(),
    "TRACKSTER_TESTING_5".toLowerCase(),
  ];

  final recent = [
    "TRACKSTER_TESTING_0".toLowerCase(),
    "TRACKSTER_TESTING_2".toLowerCase(),
    "TRACKSTER_TESTING_3".toLowerCase(),
  ];

  @override
  // actions for app bar
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){
      query = "";
    })];

  }

  @override
  Widget buildLeading(BuildContext context) {
    // Tleading icon on the left of app bar
    return IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,), onPressed: (){
      close(context, null);
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show me some result based on selection
    return Center(child: Card(
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
                  'TRACKSTER_TESTING_4',
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
                      '17-02-21, 16:45:23 pm',
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
                Expanded(child: Text('Address: railway station, Solapur highway, lonikalbhor MIT college corner, near, Loni Kalbhor, Maharashtra 412201',
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
                FlatButton.icon(onPressed: (){}, icon: Icon(Icons.web,size: 15,),
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

                FlatButton.icon(onPressed: (){}, icon: Icon(Icons.my_location_sharp,size: 15,),
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

                FlatButton.icon(onPressed: (){}, icon: Icon(Icons.edit_location,size: 15,),
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

          ],
        ),
      ),
    ),);

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for result
    final suggestion = query.isEmpty?recent:list.where((element) => element.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap: (){showResults(context);},
      leading: Icon(Icons.airport_shuttle_outlined),
      title: RichText(
        text: TextSpan(
          text: suggestion[index].substring(0,query.length),
          style: TextStyle(
              color: Colors.black, fontWeight:FontWeight.bold
          ),
          children: [TextSpan(
            text: suggestion[index].substring(query.length),
            style: TextStyle(
                color: Colors.grey
            ),
          )],
        ),
      ),
    ),
      itemCount: suggestion.length,);
  }
}