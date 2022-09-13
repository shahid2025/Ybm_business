import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
class BookedMarked extends StatefulWidget {
  const BookedMarked({Key? key}) : super(key: key);

  @override
  _BookedMarkedState createState() => _BookedMarkedState();
}

class _BookedMarkedState extends State<BookedMarked> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: Column(
        children: [

          Container(
            height: size.height*.25,
            width: size.width,
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
            child: Column(
              children: [
                SizedBox(
                  height: size.height*.03,
                ),
                Container(
                  width: size.width*.90,
                  height: size.height*.1,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Text('Search Business',style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height*.02,
                ),
                MyTextFieldWidget(hintText:'Search Busineess',IconLeft:Icons.search,check: true,IconRight: Icon(Icons.location_on_outlined,size: 16,),),

              ],
            ),
          ),
          SizedBox(
            height: size.height*.01,
          ),
          Container(

            height: size.height*.06,
            width: size.width*.90,
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 240.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    Container(
                      height:size.height*.05,
                      width: size.width*.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                      Image.asset('assets/drawer_icon_images/webinars_icon.png',color: Color(0xff00ACEF), height:size.height*.03,
                        width: size.width*.05,fit: BoxFit.cover,)
            ]
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    Container(
                      height:size.height*.05,
                      width: size.width*.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                      Image.asset('assets/drawer_icon_images/up_down_arrow.png',color: Color(0xff00ACEF), height:size.height*.03,
                        width: size.width*.05,fit: BoxFit.cover,)
            ]
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: size.height*.60,
            width: size.width*.92,
            child: ListView.builder(
                shrinkWrap: true,
                //physics: FixedExtentScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (BuildContext context,int index){
                  return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:Stack(
                        children: [
                        Container(
                          height: size.height*.16,
                          // width: size.width*.23,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width*.028,
                              ),

                              Container(
                                height: size.height*.13,
                                width:size.width*.35,
                                // color: Colors.red,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('assets/images/buisness.png',fit: BoxFit.cover,)),
                              ),

                              SizedBox(
                                width: size.width*.04,
                              ),
                              Container(
                                width: size.width*.45,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.height*.013,
                                    ),
                                    Container(
                                        alignment:Alignment.centerLeft,
                                        child: Text('Buisness Name',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),)),
                                    SizedBox(
                                      height: size.height*.007,
                                    ),
                                    Container(

                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star,color: Colors.amber,size: 12,),
                                              Text('4.8',style: TextStyle(fontSize: 12,color: Colors.black),),])),
                                    SizedBox(
                                      height: size.height*.007,
                                    ),
                                    Container(
                                      width: size.width*.85,
                                      child: Text('Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying'
                                          ' on meaningful content.',style: TextStyle(fontSize: 10,color: Colors.black),),
                                    ),




                                  ],
                                ),
                              )














                            ],
                          ),
                        ),
                          Positioned(
                            top: 0,
                            right: 40,
                            child: Container(
                              height: size.height*.05,
                              width: size.width*.1,
                              color: Color(0xff41CAFF),
                                alignment:Alignment.center,
                                child: Text('2 Km',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
                          ),

                        ]
                      )

                  );}),
          ),
        ],
      ),
    );
  }
}
