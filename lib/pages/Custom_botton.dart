import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width*0.8,
      color: Colors.pink,
      onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Do you want to quit?"),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Yes")),
              TextButton(onPressed: (){}, child: Text("No")),
            ],
          );
        });
      },
    );

  }
}
