import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:ybm_business/buisness_profile/searches_buisness.dart';
import 'package:ybm_business/routes/routes_name.dart';

import '../tabbar_class/tabbar.dart';
class Find_buisness extends StatefulWidget {
  const Find_buisness({Key? key}) : super(key: key);

  @override
  _Find_buisnessState createState() => _Find_buisnessState();
}

class _Find_buisnessState extends State<Find_buisness> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title:Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){
                    //  Scaffold.of(context).openDrawer();
                  //  scaffoldKey.currentState?.openDrawer();
                    // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  },
                  child: Container(
                      height: 13,
                      child: Image.asset('assets/images/menuimage.png',color: Colors.black,)),
                ),
                Container(
                  height: size.height*.08,
                  width: size.width*.27,
                  alignment: Alignment.center,
                  child: Image.asset(
                      "assets/images/YBM_LOGO.png"
                  ),
                ),
                Container(
                    height: 25,
                    width: 25,
                    child: Image.asset('assets/images/notificationimage.png',color: Colors.black,)),
              ],),
          )



      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: size.height*.08,
                width: size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [
                      Color(0xff41CAFF),
                      Color(0xff00ACEF),
                    ],
                  ),
                ),
                child:Text('Find Business',style: TextStyle(fontSize: 15,color: Colors.white),) ,
              ),
              SizedBox(
                height: size.height*.01,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.04,
                  width: size.width*.85,
                  child: Text("Business of the Month",style: TextStyle(fontSize: 15,color: Color(0xff41CAFF),
                      fontWeight: FontWeight.w400),)),
              Container(
                height: size.height*.25,
                width: size.width*.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [

                    ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                ),
                      child: Container(
                          height: size.height*.18,
                          width: size.width*.85,
                          child: Image.asset('assets/images/meeting.jpg',fit: BoxFit.cover,)),

                    ),
                    SizedBox(
                      height: size.height*.015,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width*.02,
                        ),
                        Container(
                          height: size.height*.04,
                          width: size.width*.83,
                          child: RichText(
                            text: const TextSpan(
                              text: 'The New Startup Business ',
                              style: TextStyle(fontSize: 15,color: Colors.black),

                              children: <TextSpan>[
                            TextSpan(
                                //  text: "Test:",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                  children: <InlineSpan>[
                                    WidgetSpan(
                                        alignment: PlaceholderAlignment.baseline,
                                        baseline: TextBaseline.alphabetic,
                                        child: SizedBox(width: 60)),
                                    TextSpan(
                                      text: "★",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,color: Colors.amber
                                      ),
                                    ),
                                    TextSpan(text: '4(2.5k)',style: TextStyle(fontSize: 12,color: Colors.amber)),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.04,
                  width: size.width*.85,
                  child: Text("Business Categories",style: TextStyle(fontSize: 15,color: Color(0xff41CAFF),
                      fontWeight: FontWeight.w400),)),
              Container(
                height: size.height*.17,
                width: size.width*.85,
                //  color: Colors.red,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                Container(
                                  height: size.height*.1,
                                  width: size.width*.2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                  Image.asset('assets/images/coffee.png')
                              ]
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  height: size.height*.03,
                                  // width: size.width*.85,
                                  child: Text("Business",style: TextStyle(fontSize: 15,color: Color(0xff41CAFF),
                                      fontWeight: FontWeight.w400),)),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                width: size.width*.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.04,
                       // width: size.width*.85,
                        child: Text("Featured Business",style: TextStyle(fontSize: 15,color: Color(0xff41CAFF),
                            fontWeight: FontWeight.w400),)),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.searchTabbarScreen);
                      },
                      child: Container(
                          alignment: Alignment.centerLeft,
                          height: size.height*.04,
                          //width: size.width*.85,
                          child: Text("View All",style: TextStyle(fontSize: 11,color: Color(0xff41CAFF),
                              fontWeight: FontWeight.w400),)),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height*.8,
                width: size.width*.85,
                //  color: Colors.red,
                child: ListView.builder(
                    itemCount: 4,
                    physics:  NeverScrollableScrollPhysics(),
                    itemBuilder: (context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height*.17,
                          width: size.width*.85,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width*.02,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:   Container(

                                    height: size.height*.13,

                                    width: size.width*.32,

                                    child: Image.asset('assets/images/computer.png',fit: BoxFit.cover,)),
                              ),
                              SizedBox(
                                width: size.width*.02,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        height: size.height*.04,
                                        width: size.width*.40,
                                        child: Text("The New Startup Business",style: TextStyle(fontSize: 12,color: Colors.black,
                                            fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        height: size.height*.06,
                                        width: size.width*.40,
                                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting",
                                          style: TextStyle(fontSize: 10,color: Colors.black,
                                              fontWeight: FontWeight.w400),textAlign: TextAlign.start,)),
                                    Container(
                                      height: MediaQuery.of(context).orientation==Orientation.portrait?
                                      size.height*.05:
                                      size.height*.08,
                                      width: MediaQuery.of(context).orientation==Orientation.portrait?
                                      size.width*.40:
                                      size.width*.40,
                                      // color: Colors.blue,
                                      //   alignment: Alignment.centerRight,
                                      decoration: BoxDecoration(
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //       color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                        // ],
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          stops: [0.0, 1.0],
                                          colors: [
                                            Color(0xff41CAFF),
                                            Color(0xff00ACEF),
                                          ],
                                        ),
                                        // color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50.0),
                                              ),
                                            ),
                                            //  minimumSize: MaterialStateProperty.all(Size(width, 50)),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.transparent),
                                            // elevation: MaterialStateProperty.all(3),
                                            shadowColor:
                                            MaterialStateProperty.all(Colors.transparent),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (c, a1, a2) =>  Tabbar(),
                                                transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                                                transitionDuration: Duration(milliseconds: 100),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Details'
                                                ,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    letterSpacing: 1,
                                                    fontSize: 15
                                                ),
                                              ),
                                              //   Icon(Icons.arrow_forward)
                                            ],
                                          )

                                      ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
