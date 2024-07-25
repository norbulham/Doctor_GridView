import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/data/Hospital_list.dart';
import 'package:doctor_gridview/pages/allhospitaldetails_page.dart';
import 'package:flutter/material.dart';

class Hospitaldetails extends StatelessWidget {
  const Hospitaldetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.location_on_outlined, size: 35,)
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

        body:SingleChildScrollView(
          child: Container(
            // color:Color(0xff0077b6).withOpacity(0.5),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xff1e6091).withOpacity(0.9)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_hospital, color: Colors.white,size: 30,),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Hospital", style: myStyle(30, Colors.white, FontWeight.bold,),
                        ),
                      ],
                    ),
                ),

                SizedBox(height: 20,),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.9,
                    ),
                  itemBuilder: (context, index){


                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>AllhospitaldetailsPage(
                              modelClass: allHospitalData[index]
                          ),
                          ),
                        );
                      },


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 180,
                                  width: 165,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white
                                  ),
                                  child: Container(
                                    height: 130,
                                    width: 165,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      image: DecorationImage(image: AssetImage("${allHospitalData[index].imgURL}",), fit: BoxFit.cover,)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 1),
                                            height: 60,
                                            width: 165,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(26),
                                            ),
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("${allHospitalData[index].hospitalName}", style: myStyle(16, Colors.black, FontWeight.bold),),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.location_on_outlined),
                                                      Text("${allHospitalData[index].location}",style: myStyle(15, Colors.black)),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
    );
  }
}
