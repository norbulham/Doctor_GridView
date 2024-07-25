import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/data/medicineDetails_list.dart';
import 'package:doctor_gridview/data/medicine_list.dart';
import 'package:doctor_gridview/pages/medicineDetail_pages.dart';
import 'package:flutter/material.dart';
class MedicinePages extends StatelessWidget {
  const MedicinePages({super.key, });

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
              ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(13),
        // color: Color(0xff48cae4),
        child: SingleChildScrollView(
          child: Column(
            children: [
             Container(
               height: 70,
               width: 230,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Color(0xff22577a).withOpacity(0.6)
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.medical_services_outlined, color: Colors.white,size: 30,),
                   SizedBox(width: 10,),
                   Text("MEDICINE", style: myStyle(30,Colors.white, FontWeight.bold ),),
                   SizedBox(width: 20,),

                 ],
               ),
             ),
              SizedBox(height: 30,),
              Column(
                children: [
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1.8
                      ),
          
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder)=>Medicinedetials(
                                modelClass: allmedicinedetail[index],
                              list: allMeds[index],
                            ),
                            ),
                          );
                        },
          
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffcaf0f8).withOpacity(0.9),
                              image: DecorationImage(image: AssetImage("${alldetailsdata[index].imgURL}",), fit: BoxFit.cover,)

                          ),
                          child: Container(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 10,),
                                Container(
                                  height: 70,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${alldetailsdata[index].title}", style: myStyle(27, Colors.black45.withOpacity(0.9), FontWeight.bold),),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text("${alldetailsdata[index].location}",style: myStyle(20, Colors.black, FontWeight.bold),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



