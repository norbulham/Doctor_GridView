import 'package:doctor_gridview/constant.dart';
import 'package:flutter/material.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert, size: 30, color: Colors.black,)
        ],
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
          color: Colors.green,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.3)
                ),
                child: Center(child: Text("Patient Details", style: myStyle(30, Colors.white, FontWeight.bold),)),

              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                  
                  child: Image(image: AssetImage("assets/images/patient.jpg"))),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
                  color: Colors.white
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Name:",style: myStyle(20, Colors.black, FontWeight.bold),),
                                  Text(" Norbu Lhamo",style: myStyle(20, Colors.black, ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("DOB: ",style: myStyle(20, Colors.black, FontWeight.bold),),
                                  Text(" 28 May 2004",style: myStyle(20, Colors.black),),

                                ],
                              ),
                              Row(
                                children: [
                                  Text("Admin Date:",style: myStyle(20, Colors.black, FontWeight.bold),),
                                  Text(" 15 June 2024",style: myStyle(20, Colors.black),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Gender: ",style: myStyle(20, Colors.black, FontWeight.bold),),
                                  Text(" Female",style: myStyle(20, Colors.black),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Address: ",style: myStyle(20, Colors.black, FontWeight.bold),),
                                  Text(" Mongar, Nagor",style: myStyle(20, Colors.black),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Contact: ",style: myStyle(20, Colors.black, FontWeight.bold),),
                                  Icon(Icons.call, size: 20, color: Colors.black,),
                                  Text("1723456",style: myStyle(20, Colors.black, ),),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text("About Patient", style: myStyle(20, Colors.blue, FontWeight.bold),),
                      Text("$blog1", style: myStyle(18, Colors.black),),
                      SizedBox(height: 20,),

                    ],
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),

    );
  }
}
