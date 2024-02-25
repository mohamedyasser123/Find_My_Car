import 'package:find_my_car/screens/CarLocatorHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindMyCar extends StatefulWidget {
  const FindMyCar({Key? key}) : super(key: key);

  @override
  State<FindMyCar> createState() => _FindMyCarState();
}

class _FindMyCarState extends State<FindMyCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('my car location'),

      ),
      body:GoogleMap(
        initialCameraPosition:CameraPosition(
          target:LatLng(37.43296265331129, -122.08832357078792)
        ),
      )



    );
  }
}

