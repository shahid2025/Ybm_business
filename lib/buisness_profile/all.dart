import 'package:flutter/material.dart';
import 'package:ybm_business/tabbar_class/tabbar.dart';

class Alll_screen extends StatefulWidget {
  const Alll_screen({Key? key}) : super(key: key);

  @override
  _Alll_screenState createState() => _Alll_screenState();
}

class _Alll_screenState extends State<Alll_screen> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.019,
              ),
              Container(
                width: size.width*.90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width*.90,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: size.width*.50,
                            child:  Text('All Businesses',style: TextStyle(fontSize: 15,
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
                          Container(
                              height: size.height*.03,
                              width: size.width*.10,
                              child: Image.asset('assets/drawer_icon_images/webinars_icon.png',color: Color(0xff00ACEF),)),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: size.height*.019,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => Tabbar(),
                      transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 100),
                    ),
                  );
                },
                child: Container(
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
                            child:Container(
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
                                         width: size.width*.80,
                                          child: Text('Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying'
                                              ' on meaningful content.',style: TextStyle(fontSize: 10,color: Colors.black),),
                                        ),




                                      ],
                                    ),
                                  )

                                ],
                              ),
                            )

                        );}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
