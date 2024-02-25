import 'package:find_my_car/screens/CarLocatorHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:find_my_car/screens/FindMyCar.dart';


void main() {
  runApp(CarLocatorApp());
}

class CarLocatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarLocator',
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: CarLocatorHomePage(),
    );
  }
}

