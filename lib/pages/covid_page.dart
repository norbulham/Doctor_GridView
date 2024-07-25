import 'package:doctor_gridview/constant.dart';
import 'package:flutter/material.dart';

class Covidsection extends StatelessWidget {
  const Covidsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert, size: 36,)
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
              ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color(0xff48bfe3),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff415a77),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.coronavirus, size: 45, color: Colors.white,),
                    Text("CoVid-19", style: myStyle(27, Colors.white, FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff64dfdf),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      Text("COVID-19 affected the population.", style: myStyle(21, Colors.black, FontWeight.bold),),
                      Text("$myText", style: myStyle(15),),
                      SizedBox(height: 20,),

                      SizedBox(height: 15,),
                      Column(
                        children: [
                          Image(image: AssetImage("assets/images/covid.webp"))
                        ],
                      ),
                      SizedBox(height: 30,),

                      SizedBox(height: 20,),
                   ],
                  ),
                ),
              SizedBox(height: 20,),
              Divider(height: 4,color: Colors.black,),
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(8),
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xff90e0ef).withOpacity(0.6) ,
                ),
                child: Column(
                  children: [
                    Text("Most Commom Symtom",style: myStyle(25, Colors.white, FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
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
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/images/fever.webp")),
                            SizedBox(height: 15,),
                            Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xff0077b6),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                    child: Text("FEVER", style: myStyle(20, Colors.white, FontWeight.bold),)
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 180,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/images/cough.jpg")),
                            SizedBox(height: 15,),
        
                            Container(
                              height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xff0077b6),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                    child: Text("COUGH", style: myStyle(20, Colors.white, FontWeight.bold),)
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
        
              SizedBox(height: 20,),
              Row(
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
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/images/tired.jpg")),
                            SizedBox(height: 15,),
        
                            Container(
                                height: 43,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: Color(0xff0077b6),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text("TIREDNESSS", style: myStyle(20, Colors.white, FontWeight.bold),)
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 180,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/images/dirroe.jpg")),
                            SizedBox(height: 15,),
        
                            Container(
                                height: 42,
                                width: 133,
                                decoration: BoxDecoration(
                                  color: Color(0xff0077b6),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text("DIARRHOEA", style: myStyle(20, Colors.white, FontWeight.bold),)
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              Divider(height: 4,color: Colors.black,),
              SizedBox(height: 30,),
        
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green. withOpacity(0.6),
                  borderRadius: BorderRadius.circular(46),
                ),
                height: 430,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 270,
                        width: MediaQuery.of(context).size. width*0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          image: DecorationImage(image: AssetImage("assets/images/india.webp"), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text("INDIA", style: myStyle(25, Colors.black,FontWeight.bold),),
                    Text("Coronavirus Cases:  45,035,393", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Deaths:  533,570", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Recovered:  N/A", style: myStyle(18, Colors.black, FontWeight.bold),),

                  ],
                ),
              ),

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green. withOpacity(0.6),
                  borderRadius: BorderRadius.circular(26),
                ),
                height: 430,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 270,
                        width: MediaQuery.of(context).size. width*0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          image: DecorationImage(image: AssetImage("assets/images/china.png"), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text("CHINA", style: myStyle(25, Colors.black,FontWeight.bold),),
                    Text("Coronavirus Cases:  503,302", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Deaths:  5,272", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Recovered:  379,053", style: myStyle(18, Colors.black, FontWeight.bold),),
                  ],
                ),
              ),

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green. withOpacity(0.6),
                  borderRadius: BorderRadius.circular(26),
                ),
                height: 430,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 270,
                        width: MediaQuery.of(context).size. width*0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          image: DecorationImage(image: AssetImage("assets/images/russia.jpg"), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text("RUSSIA", style: myStyle(25, Colors.black,FontWeight.bold),),
                    Text("Coronavirus Cases: 24,124,215", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Deaths: 402,756", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Recovered: 23,545,818", style: myStyle(18, Colors.black, FontWeight.bold),),
                  ],
                ),
              ),

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green. withOpacity(0.6),
                  borderRadius: BorderRadius.circular(26),
                ),
                height: 430,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 270,
                        width: MediaQuery.of(context).size. width*0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          image: DecorationImage(image: AssetImage("assets/images/canada.jpg"), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text("CANADA", style: myStyle(25, Colors.black,FontWeight.bold),),
                    Text("Coronavirus Cases: 4,946,090", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Deaths: 59,034", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Recovered: 3,927,670", style: myStyle(18, Colors.black, FontWeight.bold),),
                  ],
                ),
              ),

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green. withOpacity(0.6),
                  borderRadius: BorderRadius.circular(26),
                ),
                height: 430,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 270,
                        width: MediaQuery.of(context).size. width*0.86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          image: DecorationImage(image: AssetImage("assets/images/bhutan.jpg"), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text("BHUTAN", style: myStyle(25, Colors.black,FontWeight.bold),),
                    Text("Coronavirus Cases: 62,697", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Deaths: 21", style: myStyle(18, Colors.black, FontWeight.bold),),
                    Text("Recovered: 61,564", style: myStyle(18, Colors.black, FontWeight.bold),),
                  ],
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
