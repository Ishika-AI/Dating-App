import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

import 'ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Stack(

          children: [


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Container(

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.95,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1,
                    left: 30, right: 30
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Icon(FontAwesomeIcons.userAlt, size: 24, color: Colors.black,),
                        Spacer(),

                        Text("For You", style: TextStyle(fontFamily: "Proxima-Nova-Extrabold",
                            fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold
                        ),),
                        Spacer(),
                        Icon(FontAwesomeIcons.facebookMessenger, size: 24, color: Colors.black,

                        ),


                      ],


                    ),

                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)
                      ),
                      child: Container(

                        height: MediaQuery.of(context).size.height*0.7,
                        width: MediaQuery.of(context).size.width*0.92,

                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/main_actor.png")
                            )
                        ),
                        child: Stack(
                          children: [

                            Positioned(

                                right: 0,
                                bottom: MediaQuery.of(context).size.height*0.1,

                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomLeft: Radius.circular(25)
                                  ),
                                  child: Container(

                                      width: MediaQuery.of(context).size.width*0.8,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFFFF).withOpacity(0.8)
                                      ),
                                      child: Container(

                                        margin: EdgeInsets.all(22),
                                        width: MediaQuery.of(context).size.width*0.7,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            Text("Melana Veronica, 23", style: TextStyle(fontFamily: "Proxima-Nova-Extrabold",
                                                fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                            ),),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("Fashion Designer at Victoria Secret", style: TextStyle(fontFamily: "ProximaNova-Regular",
                                                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400
                                            ),),

                                          ],

                                        ),

                                      )

                                  ),
                                )

                            )

                          ],

                        ),


                      ),
                    )

                  ],

                ),

              ),
            ),



            Positioned(

              bottom: MediaQuery.of(context).size.height*0.05,
              left: MediaQuery.of(context).size.width*0.15,
              child: FloatingActionButton(
                heroTag: "cross",
                onPressed: (){},
                backgroundColor: Colors.white,
                elevation: 10,
                child: Icon(
                  LineIcons.close,
                  color: Color(0xFFA29FBE),
                  size: 28,
                ),

              ),

            ),

            Positioned(

              bottom: MediaQuery.of(context).size.height*0.05,
              left: MediaQuery.of(context).size.width*0.44,
              child: FloatingActionButton(
                onPressed: (){},
                heroTag: "love",
                backgroundColor: Colors.white,
                elevation: 10,
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Color(0xFF4DD5FF),
                  size: 20,
                ),

              ),

            ),

            Positioned(

              bottom: MediaQuery.of(context).size.height*0.05,
              right: MediaQuery.of(context).size.width*0.15,
              child: FloatingActionButton(
                onPressed: (){},
                heroTag: "heart",
                backgroundColor: Colors.white,
                elevation: 10,
                child: Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Color(0xFFFF636B),
                  size: 24,
                ),

              ),

            )


          ],

        )
      )

    );
  }
}
