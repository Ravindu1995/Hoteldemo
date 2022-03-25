import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_project/pages/details_page.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key,}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal[400],
  title: Text("Details"),
  leading: GestureDetector(
      onTap: () { Navigator.push(context,
      MaterialPageRoute(builder: (context) => DetailsPage())); },
      child: Icon(
        Icons.arrow_back_ios_rounded,  // add custom icons also
      ),
  ),

),

      body: GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(22.5448131, 88.340369),
      zoom: 15))
    );
  }
}

