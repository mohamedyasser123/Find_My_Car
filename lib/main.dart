import 'package:flutter/material.dart';

void main() {
  runApp(CarLocatorApp());
}

class CarLocatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarLocator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarLocatorHomePage(),
    );
  }
}

class CarLocatorHomePage extends StatefulWidget {
  @override
  _CarLocatorHomePageState createState() => _CarLocatorHomePageState();
}

class _CarLocatorHomePageState extends State<CarLocatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CarLocator'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome to CarLocator\nThe ultimate app for finding your parked car.\nDownload now and never lose your car again.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/car.png',
              width: 200,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle find my car button press
                },
                child: Text('Find My Car'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),

              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle find my car button press
                },
                child: Text('Custmize'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Handle find my car button press
            },
            child: Text('Continue without an account'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
