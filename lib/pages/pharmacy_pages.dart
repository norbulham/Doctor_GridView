import 'dart:math';
import 'package:doctor_gridview/constant.dart';
import 'package:flutter/material.dart';
class Pharmacydetails extends StatelessWidget {
   Pharmacydetails({super.key});

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
          color: Color(0xff006d77). withOpacity(0.8),
          child: Column(
            children: [
              Center(

                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // child: Image(image: AssetImage("${modelClass.imgURL}"), fit: BoxFit.cover,),
                ),

              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text("${modelClass.title}", style: myStyle(27, Colors.white, FontWeight.bold),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Colors.white,size: 27,),
                      // Text("${modelClass.ownername}",style: myStyle(24, Colors.white),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call, color: Colors.white,),
                      // Text("${modelClass.contact}",style: myStyle(20, Colors.white, FontWeight.bold),),
                    ],
                  ),
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
                  // Text("${modelClass.text}",style: myStyle(18, Colors.black, FontWeight.bold),),


                ],
              ),
              SizedBox(height: 27,),


              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.2)
                      ),
                      child: Center(
                          child: Text("Buy Now", style: myStyle(25, Colors.black, FontWeight.bold),)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
