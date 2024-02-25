import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FindMyCar.dart';
class CarLocatorHomePage extends StatefulWidget {
  @override
  _CarLocatorHomePageState createState() => _CarLocatorHomePageState();
}

class _CarLocatorHomePageState extends State<CarLocatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome to CarLocator',
              style: TextStyle(


                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Center(
            child:Image(
              width: 170,
              height: 170,
              image: AssetImage('images/homepage pic.png',

              ),

            ),

          ),
          SizedBox(height: 20,),
          Center(
            child: Text('The ultimate app for finding your parked car.\nDownload now and never lose your car \n again.',
            style: TextStyle(
                fontFamily: 'Protest Revolution',
              color: Colors.white,
              fontSize: 20,


            ),),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const  FindMyCar()),
                  );

    },
                child: ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const  FindMyCar()),
                  );
                
                   },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    backgroundColor: MaterialStateColor.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.purple.shade700; // Change to purple when pressed
                      }
                      return Colors.grey.shade200; // Default black background
                    }),
                  ),
                  child: const Text(
                    'Find My Car',
                    style: TextStyle(
                      color: Colors.black, // Changed text color to white for better visibility
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),

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