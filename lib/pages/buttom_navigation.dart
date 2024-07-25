import 'package:doctor_gridview/data/doctor_list.dart';
import 'package:doctor_gridview/pages/doctor_details.dart';
import 'package:doctor_gridview/pages/medicine_pages.dart';
import 'package:flutter/material.dart';

import 'covid_page.dart';
import 'home_pages.dart';
import 'medical_pages.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {


  List list = [
    Homepage(),
    // Covidsection(),
    Doctordetails(modelClass: allDocData[0],),
    MedicinePages(),
  ];

  List <BottomNavigationBarItem> allItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,), label: 'Home'),
    // BottomNavigationBarItem(icon: Icon(Icons.coronavirus), label: 'Virus'),
    BottomNavigationBarItem(icon: Icon(Icons.description, size: 30), label: 'Details'),
    BottomNavigationBarItem(icon: Icon(Icons.medical_services_outlined, size: 30), label: 'Medicine'),
  ];

  int _currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.withOpacity(0.3),

        selectedItemColor: Colors.blue,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,

        currentIndex: _currentIndex,
        onTap: (int index){
          _currentIndex = index;
          setState(() {

          });
        },

        items: allItems,
      ),
    );
  }
}
