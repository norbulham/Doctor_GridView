import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/data/medicineDetails_list.dart';
import 'package:doctor_gridview/data/medicine_list.dart';
import 'package:doctor_gridview/model/medicineDetails_model.dart';
import 'package:doctor_gridview/model/medicine_model.dart';
import 'package:doctor_gridview/pages/pharmacy_pages.dart';
import 'package:flutter/material.dart';

import 'medical_pages.dart';

class Medicinedetials extends StatelessWidget {
  MedicineModel modelClass;
  List list;
   Medicinedetials({super.key, required this.modelClass, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert, size: 35,)
        ],
        centerTitle: true,
        title: RichText(
          text: TextSpan(
              style: myStyle(28, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                  text: "Time",
                  style: myStyle(28, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "+",
                  style: myStyle(28, primaryColor, FontWeight.bold),
                ),
              ]
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          // color: Color(0xff006d77). withOpacity(0.8),
          child: Column(
            children: [
              Center(

                  child: Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                    child: Image(image: AssetImage("${modelClass.imgURL}"), fit: BoxFit.cover,),
                  ),

              ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.location_on_outlined),
                     Text("${modelClass.title}", style: myStyle(27, Colors.black, FontWeight.bold),),
                   ],
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.person, color: Colors.black,size: 27,),
                     Text("${modelClass.ownername}",style: myStyle(24, Colors.black),),
                   ],
                 ),
                 SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Column(
                       children: [
                         Icon(Icons.call, color: Colors.black,size: 30,),
                         Text("Phone Call", style: myStyle(20, Colors.black),)
                       ],
                     ),
                     Column(
                       children: [
                         Icon(Icons.video_call_outlined, color: Colors.black,size: 35,),
                         Text("Video Call", style: myStyle(20, Colors.black),)

                       ],
                     ),
                     Column(
                       children: [
                         Icon(Icons.message, color: Colors.black,size: 30,),
                         Text("Messages", style: myStyle(20, Colors.black),)

                       ],
                     ),
                   ],
                 ),
                 SizedBox(height: 15,),
                 Row(
                   children: [
                     Container(
                       height: 50,
                       width: 100,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.star, size: 30, color: Colors.yellow,),
                           Icon(Icons.star, size: 30, color: Colors.yellow,),
                           Icon(Icons.star_border, size: 30, ),
                         ],
                       ),

                     ),
                   ],
                 ),
                 Text("${modelClass.text}",style: myStyle(18, Colors.black, ),),


               ],
             ),
              SizedBox(height: 27,),


              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder)=>MedicalPages(
                        list: list

                    ),
                    ),
                  );
                },

                child: Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withOpacity(0.1)
                      ),

                      child:  Center(
                          child: Text("Buy Now", style: myStyle(25, Colors.black, FontWeight.bold),)
                      ),
                    ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
