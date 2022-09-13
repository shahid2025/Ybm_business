import 'package:flutter/material.dart';
import 'package:ybm_business/home/add_new_offer.dart';
class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  _OfferState createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Container(
        height: size.height*.1,
        width: size.width*.15,
        child: FloatingActionButton(
          backgroundColor: Color(0xff41CAFF),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => AddNewOffer(),
                transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                transitionDuration: Duration(milliseconds: 100),
              ),
            );
          },
          child: Icon(Icons.add,size: 30,),
          mini: true,
        ),
      ),
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
                child:Text('Offers',style: TextStyle(fontSize: 15,color: Colors.white),) ,
              ),
              SizedBox(
                height: size.height*.02,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: size.width*.90,
                child:  Text('Active Offer',style: TextStyle(fontSize: 15,
                    fontWeight:FontWeight.w600,color: Colors.black),),
              ),

              SizedBox(
                height: size.height*.012,
              ),
              Container(
                height: size.height*.23,
                width: size.width*.90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height*.01,
                    ),
                    Container(
                      width: size.width*.80,
                      child:   Row(
                        children: [
                          Container(

                            height: size.height*.03,

                            width: size.width*.20,

                            alignment: Alignment.center,

                            decoration: BoxDecoration(

                                color: Color(0xff00D09E),

                                borderRadius: BorderRadius.circular(12)

                            ),

                            child: Text('Active',style: TextStyle(fontSize: 15,

                                fontWeight:FontWeight.w600,color: Colors.white),),



                          ),
                        ],
                      ),
                    ),
                    Container(
                     // padding: EdgeInsets.symmetric(horizontal: 05,vertical: 05),
                     height: size.height*.03,
                     width: size.width*.64,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        //  color: Color(0xff00D09E),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Text('Offer Ends in :  12 : 35 Mint',style: TextStyle(fontSize: 13,
                          fontWeight:FontWeight.w600,color: Color(0xff41CAFF)),),

                    ),



                    Container(
                      height: size.height*.14,
                      width: size.width*.90,
                      child: Row(
                        children: [

                          Container(
                            height: size.height*.14,
                            width: size.width*.3,
                            child: Image.asset('assets/drawer_icon_images/offer_pic.png',fit: BoxFit.cover,),
                          ),
SizedBox(
  width: size.width*.035,
),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: size.height*.03,
                                  width: size.width*.55,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    //  color: Color(0xff00D09E),
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Text('60% Off in first Visit',style: TextStyle(fontSize: 13,
                                      fontWeight:FontWeight.w600,color: Colors.black),),

                                ),
                                SizedBox(
                                  height: size.height*.017,
                                ),
                                Container(
                                 // padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: size.width*.55,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                                      ' Lorem Ipsum has been the industry.',style: TextStyle(fontSize: 10,
                                      fontWeight:FontWeight.w400,color: Colors.black),),
                                ),
                                SizedBox(
                                  height: size.height*.006,
                                ),
                                Container(
                                  width: size.width*.55,
                                  child:   Row(
                                    children: [
                                      SizedBox(
                                        width: size.width*.0,
                                      ),
                                      Container(

                                        height: size.height*.037,

                                        width: size.width*.30,

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

                                            borderRadius: BorderRadius.circular(5)

                                        ),

                                        child: Text('Mark as end',style: TextStyle(fontSize: 15,

                                            fontWeight:FontWeight.w600,color: Colors.white),),



                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: size.height*.013,
                    ),
                    Container(
                      height: size.height*.006,
                      width: size.width*.90,
                      color: Colors.blue,
                    ),



                  ],
                ),
              ),

              SizedBox(
                height: size.height*.025,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: size.width*.90,
                child:  Text('My Previous Offers',style: TextStyle(fontSize: 15,
                    fontWeight:FontWeight.w600,color: Colors.black),),
              ),
              SizedBox(
                height: size.height*.025,
              ),
              Container(
                height: size.height*.23,
                width: size.width*.90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height*.01,
                    ),
                    Container(
                      width: size.width*.80,
                      child:   Row(
                        children: [
                          Container(

                            height: size.height*.03,

                            width: size.width*.20,

                            alignment: Alignment.center,

                            decoration: BoxDecoration(

                                color: Colors.red,

                                borderRadius: BorderRadius.circular(12)

                            ),

                            child: Text('Disabled',style: TextStyle(fontSize: 15,

                                fontWeight:FontWeight.w600,color: Colors.white),),



                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height*.03,
                      width: size.width*.28,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        //  color: Color(0xff00D09E),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Text('Offer Expires',style: TextStyle(fontSize: 13,
                          fontWeight:FontWeight.w600,color: Color(0xff41CAFF)),),

                    ),



                    Container(
                      height: size.height*.155,
                      width: size.width*.90,
                      child: Row(
                        children: [

                          Container(
                            height: size.height*.14,
                            width: size.width*.28,
                            child: Image.asset('assets/drawer_icon_images/offer_pic.png',fit: BoxFit.cover,),
                          ),
                          SizedBox(
                            width: size.width*.03,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: size.height*.03,
                                  width: size.width*.58,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    //  color: Color(0xff00D09E),
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Text('60% Off in first Visit',style: TextStyle(fontSize: 13,
                                      fontWeight:FontWeight.w600,color: Colors.black),),

                                ),
                                SizedBox(
                                  height: size.height*.01,
                                ),
                                Container(

                                  width: size.width*.58,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                                      ' Lorem Ipsum has been the industry.',style: TextStyle(fontSize: 10,
                                      fontWeight:FontWeight.w400,color: Colors.black),),
                                ),
                                SizedBox(
                                  height: size.height*.009,
                                ),
                                Container(
                                  width: size.width*.59,
                                  child: Row(
                                    children: [
                                      Container(

                                        height: size.height*.037,

                                        width: size.width*.35,

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

                                            borderRadius: BorderRadius.circular(5)

                                        ),

                                        child: Text('Reschedule offer',style: TextStyle(fontSize: 15,

                                            fontWeight:FontWeight.w600,color: Colors.white),),



                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),




                  ],
                ),
              ),
              SizedBox(
                height: size.height*.025,
              ),

              Container(
                height: size.height*.23,
                width: size.width*.90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height*.01,
                    ),
                    Container(
                      width: size.width*.80,
                      child:   Row(
                        children: [
                          Container(

                            height: size.height*.03,

                            width: size.width*.20,

                            alignment: Alignment.center,

                            decoration: BoxDecoration(

                                color: Colors.red,

                                borderRadius: BorderRadius.circular(12)

                            ),

                            child: Text('Disabled',style: TextStyle(fontSize: 15,

                                fontWeight:FontWeight.w600,color: Colors.white),),



                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height*.03,
                      width: size.width*.28,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        //  color: Color(0xff00D09E),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Text('Offer Expires',style: TextStyle(fontSize: 13,
                          fontWeight:FontWeight.w600,color: Color(0xff41CAFF)),),

                    ),



                    Container(
                      height: size.height*.155,
                      width: size.width*.90,
                      child: Row(
                        children: [

                          Container(
                            height: size.height*.14,
                            width: size.width*.28,
                            child: Image.asset('assets/drawer_icon_images/offer_pic.png',fit: BoxFit.cover,),
                          ),
                          SizedBox(
                            width: size.width*.03,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: size.height*.03,
                                  width: size.width*.58,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    //  color: Color(0xff00D09E),
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Text('60% Off in first Visit',style: TextStyle(fontSize: 13,
                                      fontWeight:FontWeight.w600,color: Colors.black),),

                                ),
                                SizedBox(
                                  height: size.height*.01,
                                ),
                                Container(

                                  width: size.width*.58,
                                  alignment: Alignment.centerLeft,
                                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                                      ' Lorem Ipsum has been the industry.',style: TextStyle(fontSize: 10,
                                      fontWeight:FontWeight.w400,color: Colors.black),),
                                ),
                                SizedBox(
                                  height: size.height*.009,
                                ),
                                Container(
                                  width: size.width*.59,
                                  child: Row(
                                    children: [
                                      Container(

                                        height: size.height*.037,

                                        width: size.width*.35,

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

                                            borderRadius: BorderRadius.circular(5)

                                        ),

                                        child: Text('Reschedule offer',style: TextStyle(fontSize: 15,

                                            fontWeight:FontWeight.w600,color: Colors.white),),



                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),




                  ],
                ),
              ),
              SizedBox(
                height: size.height*.025,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
