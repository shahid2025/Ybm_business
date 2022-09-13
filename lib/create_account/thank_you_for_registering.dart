import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/chat_option/term_&_Conditions.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';
class Thankyou_for_Registering extends StatefulWidget {
  const Thankyou_for_Registering({Key? key}) : super(key: key);

  @override
  _Thankyou_for_RegisteringState createState() => _Thankyou_for_RegisteringState();
}

class _Thankyou_for_RegisteringState extends State<Thankyou_for_Registering> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),

            Container(
              height: size.height*.1,
              width: size.width*.80,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child:Icon(Icons.arrow_back_ios,color: Colors.grey.withOpacity(1),

                      )
                  ),
                  SizedBox(
                    width: size.width*.20,
                  ),
                  Container(
                    height: size.height*.1,
                    width: size.width*.35,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/YBM_LOGO.png",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height*.04,
            ),
            Container(
                alignment: Alignment.center,
                height: size.height*.075,
                width: size.width*.85,
                child: Text("THANK YOU FOR REGISTERING",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                    fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
            Container(
              height: size.height*.3,
              width: size.width*.90,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/thankuscreen_image.png",
              ),
            ),
            SizedBox(
              height: size.height*.04,
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 05),
               // height: size.height*.1,
                width: size.width*.80,
                child: Text("Information will be verified and you will be notified by email when"
                    " you have been approved \nYou will then be able to add to your business profile",
                  style: TextStyle(fontSize: 14,color: Colors.black,
                    fontWeight: FontWeight.w500),textAlign: TextAlign.center,)),
            SizedBox(
              height: size.height*.12,
            ),

            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Continue',
              textcolor: Colors.white, onTap: (){
                Navigator.pushNamed(context, RoutesName.term_condition);
              }, wholewidth: size.width*.85,),
          ],
        ),
      ),
    );
  }
}
