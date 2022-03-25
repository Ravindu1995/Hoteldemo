import 'package:flutter/material.dart';
import 'package:my_project/pages/map_page.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key? key,}) : super(key: key);



  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal[400],
  title: Text("Details"),
  leading: GestureDetector(
      onTap: () {  },
      child: Icon(
        Icons.arrow_back_ios_rounded,  
      ),
  ),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
      MaterialPageRoute(builder: (context) => MapPage()));
        },
        child: Icon(
          Icons.location_on_sharp,
          size: 26.0,
        ),
      )
    ),
    
  ],
),



        
      body: Center(
        child: Column(
        )
      ),
    );
  }
}