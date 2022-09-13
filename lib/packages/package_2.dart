import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';

import '../create_account/thank_you_for_registering.dart';
class Package_2 extends StatefulWidget {
  const Package_2({Key? key}) : super(key: key);

  @override
  _Package_2State createState() => _Package_2State();
}

class _Package_2State extends State<Package_2> {
  List<bool> status = [
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> title = [
    'Q 01: Lorem ipsum is a placeholder text?',
    'Q 02: Lorem ipsum is a placeholder text?',
    'Q 03: Lorem ipsum is a placeholder text?',
    'Q 04: Lorem ipsum is a placeholder text?',
    'Q 05: Lorem ipsum is a placeholder text?',

  ];
  List<Icon> arrow = [
    Icon(Icons.add),
    Icon(Icons.add),
    Icon(Icons.minimize),
    Icon(Icons.add),
    Icon(Icons.minimize),
 //   Icon(Icons.add),

  ];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.05,
              ),
              Container(
                width: size.width*.90,
                alignment: Alignment.centerLeft,
                child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
                  Navigator.pop(context);
                },),
              ),
              SizedBox(
                height: size.height*.01,
              ),
            Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.06,
                  width: size.width*.90,
                  child: Text("Please answer these questions so we can best serve your buisness",style:
                  TextStyle(fontSize: 16,color: Color(0xff41caff),fontWeight: FontWeight.w600),)),
              SizedBox(
                height: size.height*.01,
              ),
              Container(
                height: size.height*.63,
                width:  MediaQuery.of(context).orientation== Orientation.portrait?
                size.width * .90:
                size.width * .778,
                //  width: size.width * .85,
                child: ListView.builder(
                    shrinkWrap: true,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //height: size.height * .11,
                          width: size.width * .90,
                          decoration: BoxDecoration(
                            color: Color(0xffedf9fe),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: size.width * .90,
                                color: Color(0xffddf3fd),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: size.width*.03,
                                    ),
                                    Container(
                                        width: size.width * .69,
                                        child: Text(
                                          title[index],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )),

                                    IconButton(icon: status[index] == true ? Icon(Icons.minimize) :Icon(Icons.add),
                                        onPressed: (){
                                          setState(() {
                                            status[index] = !status[index];
                                          });
                                        }),

                                  ],
                                ),
                              ),
                              status[index]== true ?  Container(
                                width: size.width * .90,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: size.width*.03,
                                    ),
                                    Container(

                                      height: size.height*.07,
                                      width: size.width*.82,
                                      decoration: BoxDecoration(
                                         // color: Color(0xfff0f0f0),
                                         // borderRadius: BorderRadius.circular(12)
                                      ),
                                      child: TextField(

                                        decoration:  InputDecoration(
                                         //   prefixIcon:Icon(Icons.phone),
                                            border: InputBorder.none,
                                            // border: OutlineInputBorder(
                                            //   borderRadius: BorderRadius.circular(9),
                                            // ) ,


                                            hintText: 'When booking a sedan, you will receive a something.',hintStyle: TextStyle(
                                          fontSize: 10,
                                        ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ) : Container(),
                              SizedBox(
                                height: size.height * .03,
                              ),
                              // Container(
                              //   width:MediaQuery.of(context).orientation== Orientation.portrait?
                              //   size.width*.85:
                              //   size.width*.70,
                              //   child: Row(
                              //     children: [
                              //       Container(
                              //         color: Colors.grey,
                              //         height: .4,
                              //         width:MediaQuery.of(context).orientation== Orientation.portrait?
                              //         size.width*.76:
                              //         size.width*.70,
                              //
                              //         // width: 300,
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),

              SizedBox(
                height: size.height*.05,
              ),

              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Confirm',
                textcolor: Colors.white, onTap: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => Thankyou_for_Registering(),
                      transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 100),
                    ),
                  );
                }, wholewidth: size.width*.85,),
            ],
          ),
        ),
      ),
    );
  }
}
