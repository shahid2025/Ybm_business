import 'package:flutter/material.dart';
import 'package:ybm_business/home/webinar_2.dart';

class Webinars extends StatefulWidget {
  const Webinars({Key? key}) : super(key: key);

  @override
  _WebinarsState createState() => _WebinarsState();
}

class _WebinarsState extends State<Webinars> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: Color(0xffe5e5e5),
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
                child:Text('Webinars',style: TextStyle(fontSize: 15,color: Colors.white),) ,
              ),
              SizedBox(
                height: size.height*.03,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        height:size.height*.22,
                        width: size.width*.90,
                        child: Image.asset('assets/images/meeting.jpg',fit: BoxFit.cover,)),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 10,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: size.width*.90,
                      child:  Text('Webinar Title',style: TextStyle(fontSize: 15,
                          fontWeight:FontWeight.w500,color: Colors.white),),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 10,
                    child: Container(
                      width: size.width*.90,
                      child: Row(
                        //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.calendar_today,size: 15,color: Colors.white),
                          SizedBox(
                            width: size.width*.01,
                          ),
                          Container(
                            child: Text('25 / 02 / 2022',style:
                            TextStyle(fontSize: 12,fontWeight: FontWeight.w400,
                                color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],

              ),

              SizedBox(
                height: size.height*.02,
              ),
              Container(
                width: size.width*.90,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: size.width*.50,
                      child:  Text('Upcoming Events',style: TextStyle(fontSize: 15,
                          fontWeight:FontWeight.w600,color: Colors.black),),
                    ),
                    Container(
                      height: size.height*.03,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      alignment: Alignment.center,
                      width: size.width*.20,
                      child:  Text('View All',style: TextStyle(fontSize: 15,
                          fontWeight:FontWeight.w600,color: Color(0xff00ACEF)),),
                    ),
                    Container(
                        height: size.height*.03,
                        width: size.width*.10,
                        child: Image.asset('assets/drawer_icon_images/up_down_arrow.png')),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Webinar_2()),
                        );
                      },
                      child: Container(
                          height: size.height*.03,
                          width: size.width*.10,
                          child: Image.asset('assets/drawer_icon_images/webinars_icon.png',color: Color(0xff00ACEF),)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height*.02,
              ),
              Container(
                //  alignment: Alignment.centerLeft,
                  width: size.width*.90,
                  height: size.height*.50,
                  child:ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context,int index)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: size.width*.92,
                            height: size.height*.15,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius:BorderRadius.circular(12),
                                  child: Container(
                                      height:size.height*.15,
                                      width: size.width*.33,
                                      child: Image.asset('assets/images/katrina.jpg',fit: BoxFit.cover,)),
                                ),
                                SizedBox(
                                  width: size.width*.03,
                                ),
                                Container(
                                  width: size.width*.51,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*.005,
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Meet & Greet with Julia Morris',style:
                                        TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.black),),
                                      ),
                                      SizedBox(
                                        height: size.height*.01,
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Julia Morrison',style:
                                        TextStyle(fontSize: 13,letterSpacing: 1,
                                            fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)

                                        ),),
                                      ),
                                      SizedBox(
                                        height: size.height*.01,
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text('\$750',style:
                                        TextStyle(fontSize: 13,letterSpacing: 1,fontWeight: FontWeight.w600,
                                            color: Color(0xff41caff)

                                        ),),
                                      ),
                                      SizedBox(
                                        height: size.height*.005,
                                      ),
                                      Container(
                                        child: Row(
                                          //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                           Icon(Icons.calendar_today,size: 15,color: Color(0xff7a7a7a)),
SizedBox(
  width: size.width*.06,
),
                                            Container(
                                              child: Text('25 / 02 / 2022',style:
                                              TextStyle(fontSize: 12,fontWeight: FontWeight.w400,
                                                  color: Color(0xff7a7a7a)),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*.01,
                                      ),
                                      Container(
                                        child: Row(
                                          //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                           Icon(Icons.watch_later_outlined,size: 15,color: Color(0xff7a7a7a)),
                                            SizedBox(
                                              width: size.width*.06,
                                            ),
                                            Container(
                                              child: Text('3 min',style:
                                              TextStyle(fontSize: 12,
                                                  fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)),),
                                            ),
                                          ],
                                        ),
                                      ),



                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
