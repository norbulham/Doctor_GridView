import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/model/medicine_model.dart';
import 'package:doctor_gridview/pages/medical_dialoguebox.dart';
import 'package:flutter/material.dart';
import '../data/medicineDetails_list.dart';
import '../data/medicine_list.dart';
class MedicalPages extends StatefulWidget {
  List list;
  MedicalPages({super.key, required this.list});

  @override
  State<MedicalPages> createState() => _MedicalPagesState();
}

class _MedicalPagesState extends State<MedicalPages> {
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
            ],
          ),
        ),
      ),
      body: Container(
        color: Color(0xff1e6091),
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
                Container(
                    height: 70,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withOpacity(0.3)
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Search", style: myStyle(30, Colors.white, FontWeight.bold),),
                          Icon(Icons.search, color: Colors.white, size: 35,)
                         
                        ],
                      ),
                    )
                ),
              SizedBox(height: 20,),


              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.6,
                ),
                itemBuilder: (context,index){
                  return Container(
                    padding: EdgeInsets.all(15),
                    child: Card(
                      color: Color(0xff1a759f),

                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (builder)=>MedicalDialoguebox(
                                  ),
                                  ),
                                );
                              },

                              child: Column(
                                children: [
                                 Container(
                                   height: 150,
                                   width: 130,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(30),
                                     image: DecorationImage(image: AssetImage("${widget.list[index].imgURL}"), fit: BoxFit.cover,)
                                   ),
                                 ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text("${widget.list[index].medicineName}", style: myStyle(25, Colors.white, FontWeight.bold),),
                                Text("${widget.list[index].rating}", style: myStyle(25, Colors.white, FontWeight.bold),),
                                Text("\$ ${widget.list[index].price}", style: myStyle(25, Colors.white, FontWeight.bold),),

                              ],
                            )
                          ],
                        ),
                      ),
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




