import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/data/doctor_list.dart';
import 'package:doctor_gridview/pages/ambulance-pages.dart';
import 'package:doctor_gridview/pages/covid_page.dart';
import 'package:doctor_gridview/pages/doctor_details.dart';
import 'package:doctor_gridview/pages/hospital_details_pages.dart';
import 'package:doctor_gridview/pages/medicine_pages.dart';
import 'package:doctor_gridview/pages/profile_pages.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 35,),
                    RichText(
                        text: TextSpan(
                          style: myStyle(20, primaryColor, FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "Doc", style: myStyle(28, primaryColor, FontWeight.bold),
                            ),
                            TextSpan(
                              text: "Time", style: myStyle(28, secondaryColor, FontWeight.bold)
                            ),
                            TextSpan(
                              text: "+", style: myStyle(28, primaryColor, FontWeight.bold),
                            ),
                          ]
                        ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>ProfilePages(
                          ),
                          ),
                        );
                      },

                      child: Container(
                        height: 57,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue),
                          image: DecorationImage(image: AssetImage("assets/images/patient.jpg")
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container(
                height: MediaQuery.of(context).size.height*0.3,
                width:double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.40,
                      width: MediaQuery.of(context).size.width*0.45,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/surgery.webp"), fit: BoxFit.cover
                        ),
                      ),
                    ),


                    Container(
                      width: MediaQuery.of(context).size.width*0.47,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Stay Healthy!", style: myStyle(25, Colors.black, FontWeight.bold), maxLines: 1,),
                          Text("Stay Safe",style: myStyle(22, Colors.black, FontWeight.bold),maxLines: 1,),
                          Text("we provide goood services to our patients. we are open 24/7. do contact us any time you need", style: myStyle(16),),

                          Row(
                            children: [
                              Icon(Icons.video_call, color: Colors.blue,),
                              Text(" Meet Online", style: myStyle(18, secondaryColor, FontWeight.bold),)
                            ],
                          )
                          ],
                      ),
                    )
                  ],
                ),

              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Services", style: myStyle(25, primaryColor, FontWeight.bold),),
                  Text("See all",style: myStyle(18, Colors.black),),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (builder)=>Ambulancepage()
                              )
                          );
                        },
                        child: Image.asset("assets/icons/ambulance.gif"),
                      ),

                      Text("ambulance"),
                    ],
                  ),


                  Column(
                    children: [

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (builder)=>Hospitaldetails()
                              )
                          );
                        },
                          child: Image.asset("assets/icons/hospital.gif")
                      ),
                      Text("Hospitals"),
                    ],
                  ),



                  Column(
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (builder)=>Covidsection()
                                )
                            );
                          },
                          child: Image.asset("assets/icons/virus.gif"),
                      ),
                      Text("Covid-19"),
                    ],
                  ),


                  Column(
                    children: [

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (builder)=>MedicinePages()
                              )
                          );
                        },
                        child: Image.asset("assets/icons/medicine.gif"),
                      ),
                      Text("Medicines"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Rated Doctors", style: myStyle(25, primaryColor, FontWeight.bold),),
                  Text("See all",style: myStyle(18, Colors.black),),
                ],
              ),

              SizedBox(height: 5,),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allDocData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.7
                  ),
                 itemBuilder: (context,index){
                    
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>Doctordetails(
                              modelClass: allDocData[index]),
                          ),
                        );
                      },



                      child: Card(
                        elevation: 4,
                        child: Container(
                          child: Column(
                            children: [

                              Hero(
                                tag: "${allDocData[index].imgURL}",
                                child: CircleAvatar(
                                  maxRadius: 50,
                                  backgroundImage: AssetImage("${allDocData[index].imgURL}"),
                                ),
                              ),

                              Text("${allDocData[index].name}", style: myStyle(20, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                              Text("${allDocData[index].specialist}", style: myStyle(16, Colors.black),textAlign: TextAlign.center,),
                              Container(
                               height: 40,
                               width: 70,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 color: Colors.blue.withOpacity(0.4),
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.star, size: 20, color: Colors.yellow,),
                                   Text("${allDocData[index].rating}"),
                                 ],
                               ),
                             )
                            ],
                          ),
                        ),
                      ),
                    );
                },
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
