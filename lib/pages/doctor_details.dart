import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/data/doctor_list.dart';
import 'package:doctor_gridview/model/doctor_model.dart';
import 'package:flutter/material.dart';

class Doctordetails extends StatelessWidget {
  DoctorModel modelClass;
   Doctordetails({super.key, required this.modelClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: RichText(
          text: TextSpan(
            style: myStyle(26, primaryColor, FontWeight.bold),
            children: [
              TextSpan(
                text: "Doc",
              ),
              TextSpan(
                text: "Time",
                style: myStyle(26, secondaryColor, FontWeight.bold),
              ),
              TextSpan(
                text: "+",
                style: myStyle(26, primaryColor, FontWeight.bold),
              ),
            ]
          ),
        ),
        
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
            children: [


              Hero(
                 tag:"${modelClass.imgURL}",
                  child: Image(image: AssetImage("${modelClass.imgURL}"))
              ),


              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                  color: Colors.white
                ),
                 child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${modelClass.name}", style: myStyle(20, Colors.black, FontWeight.bold),),
                              Text("${modelClass.specialist}", style: myStyle(20, Colors.black),),
                            ],
                          ),
                          Text("\$ ${modelClass.payment}", style: myStyle(16, Colors.green, FontWeight.bold),),
                        ],
                      ),
                      SizedBox(
                        height: 20,),
                      Text("About Doctor", style: myStyle(20, primaryColor, FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("${modelClass.abtdoc}", style: myStyle(18, Colors.black),),
                      SizedBox(height: 25,),



                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.width*0.26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Patients", style: myStyle(16, Colors.black, FontWeight.bold),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person, size: 20, color: primaryColor,),
                                      Text("${modelClass.patientnumber}", style: myStyle(14, Colors.black),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.width*0.26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Experience", style: myStyle(16, Colors.black, FontWeight.bold),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                     Icon(Icons.shopping_bag, size: 16, color: primaryColor,) ,
                                      Text("${modelClass.experience}", style: myStyle(16, Colors.black),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.width*0.26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rating", style: myStyle(16, Colors.black, FontWeight.bold),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow. withOpacity(1),),
                                      Text("${modelClass. rating}", style: myStyle(16, Colors.black),),
                                      Text("years", style: myStyle(16, Colors.black),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text("Available Time", style: myStyle(20, primaryColor, FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(

                        child: SizedBox(height: 80,
                        child: ListView.builder(
                          // physics:  NeverScrollableScrollPhysics(),
                            itemCount: modelClass.appointmentlist.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){

                            return Card(
                              margin: EdgeInsets.all(8),
                              elevation: 6,
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.04,
                                width: MediaQuery.of(context).size.width*0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(7),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${modelClass.appointmentlist[index]}",style: myStyle(16,primaryColor,FontWeight.bold),),
                                      Text("${modelClass.appointmenttime[index]}",style: myStyle(16,primaryColor),),
                                    ],
                                  ),
                                ),
                              ),
                            );
                            }
                            ),

                        ),
                      ),
                      SizedBox(height: 35,),

                      Center(
                        child: MaterialButton(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height*0.09,
                          minWidth: MediaQuery.of(context).size.width*0.8,
                          onPressed: (){},
                          child: Text("Make an Appoinment", style: myStyle(22, Colors.white, FontWeight.bold),),
                        ),
                      )
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
