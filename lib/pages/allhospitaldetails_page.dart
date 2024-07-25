import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/data/Hospital_list.dart';
import 'package:doctor_gridview/model/hospital_model.dart';
import 'package:flutter/material.dart';

class AllhospitaldetailsPage extends StatelessWidget {
  HospitalModel modelClass;
   AllhospitaldetailsPage({super.key, required this.modelClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          height: 800,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                elevation: 4,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 300,
                        width: 400,
                        child: Image(image: AssetImage("${modelClass.imgURL}"), fit: BoxFit.cover,),
                          
                      ),


                       Container(
                         padding: EdgeInsets.all(10),
                         child: Column(
                           children: [
                             Text("${modelClass.hospitalName}", style: myStyle(25, Colors.black, FontWeight.bold),),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.location_on_outlined),
                                 Text("${modelClass.location}", style: myStyle(20, Colors.black, FontWeight.bold),),
                               ],
                             ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Numbers of Staff : ",style: myStyle(20, Colors.black, FontWeight.bold),),
                                Text("${modelClass.doctornum}", style: myStyle(20, Colors.black, FontWeight.bold),),
                              ],
                            ),
                             SizedBox(height: 8,),
                             Row(
                               children: [
                                 Icon(Icons.star, color: Colors.yellow, size: 35,),
                                 Icon(Icons.star, color: Colors.yellow, size: 35,),
                                 Icon(Icons.star_border, color: Colors.black, size: 35,),
                                 Icon(Icons.star_border, color: Colors.black, size: 35,),
                               ],
                             ),
                             SizedBox(height: 8,),
                         
                            Text("${modelClass.abtHospital}", style: myStyle(16, Colors.black, FontWeight.bold),),
                           ],
                         ),
                       )
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
