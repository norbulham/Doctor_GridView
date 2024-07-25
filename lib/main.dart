
import 'package:doctor_gridview/pages/buttom_navigation.dart';
import 'package:doctor_gridview/pages/home_pages.dart';
import 'package:doctor_gridview/pages/pactical_carousel.dart';
import 'package:doctor_gridview/pages/registration_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }

}

