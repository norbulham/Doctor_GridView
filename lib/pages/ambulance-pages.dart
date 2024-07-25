import 'package:doctor_gridview/constant.dart';
import 'package:doctor_gridview/pages/practice_dialogue.dart';
import 'package:doctor_gridview/pages/profile_pages.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Ambulancepage extends StatelessWidget {
  const Ambulancepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert, size: 35,color: Color(0xff3f37c9),)
        ],
        centerTitle: true,
        title: RichText(
          text: TextSpan(
              children: [
                TextSpan(
                  text: "Doc",style: myStyle(30, primaryColor, FontWeight.bold)
                ),
                TextSpan(
                  text: "Time",
                  style: myStyle(30, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "+",
                  style: myStyle(30, primaryColor, FontWeight.bold),
                ),
              ]
          ),
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue.withOpacity(0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search",style: TextStyle(fontSize: 26, color: Colors.black45. withOpacity(0.7))),
                  Lottie.asset("assets/animation/search.json")

                ],
              ),
            ),
            SizedBox(height: 100,),
            Lottie.asset("assets/animation/anima.json"),
            SizedBox(height: 150,),
            Container(
              height: 70,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.withOpacity(0.1),
              ),
              child:
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder)=>PracticeDialogue(
                    ),
                    ),
                  );
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Lottie.asset("assets/animation/call.json"),
                    Text("112", style: myStyle(25, Colors.green, FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
