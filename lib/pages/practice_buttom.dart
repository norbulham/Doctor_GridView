import 'package:doctor_gridview/constant.dart';
import 'package:flutter/material.dart';

class PracticeButtom extends StatefulWidget {
  const PracticeButtom({super.key});

  @override
  State<PracticeButtom> createState() => _PracticeButtomState();
}

class _PracticeButtomState extends State<PracticeButtom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          minWidth: MediaQuery.of(context). size.width*0.8,
          height: 60,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          color: Colors.pink,
          onPressed: (){
            showModalBottomSheet(
              isDismissible: false,
                isScrollControlled: true,

                context: context,
                builder: (context){
                  return Container(
                    height: 800,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                        },
                      child: Text("Go Back", style: myStyle(25, Colors.white, FontWeight.bold),),
                    ),
                  );
                },
            );
          },
          child: Text("Show buttom sheet", style: myStyle(25, Colors.white, FontWeight.bold),),
        ),
      ),
    );
  }
}

