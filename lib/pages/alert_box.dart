import 'package:flutter/material.dart';

import 'Custom_botton.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Box"),
        centerTitle: true,
        backgroundColor: Colors.blue.withOpacity(0.5),
      ),
      body: Column(
        children: [
          CustomBotton(),
          CustomBotton(),
          CustomBotton(),

        ],
      ),
    );
  }
}
