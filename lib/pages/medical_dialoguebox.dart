import 'package:doctor_gridview/constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MedicalDialoguebox extends StatelessWidget {
  const MedicalDialoguebox({super.key});

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


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (){
                showDialog(context: context, builder: (context){

                  return AlertDialog(
                    title: Text("Do you want to buy?"),
                    actions: [
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Yes")
                      ),
                      TextButton(onPressed: (){}, child: Text("No")),
                    ],
                  );
                });

              },
              child: Lottie.asset("assets/animation/buyme.json",),
            ),
          ],
        ),
      ),
    );
  }
}
