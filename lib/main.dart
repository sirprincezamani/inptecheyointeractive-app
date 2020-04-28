import 'package:doctor_booking_app/screens/home_screen.dart';
import 'package:doctor_booking_app/views/Board%20of%20Directors.dart';
import 'package:doctor_booking_app/views/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INPTECH',
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Directors(),
    );
  }
}




