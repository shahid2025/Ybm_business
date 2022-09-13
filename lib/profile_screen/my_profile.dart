
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';

import 'edit_profile.dart';
class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  _MyprofileState createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff41CAFF),
                  Color(0xff00ACEF)
                ],
              ),
            ),
          ),
centerTitle: true,
automaticallyImplyLeading: false,
        leading:   IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios),),

title:  Text('My Profile',style: TextStyle(
      fontSize: 15,fontWeight: FontWeight.bold
      ),),


      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('Full Name',style: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey
              ),),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('Julia Smith',style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w600
              ),),
            ),

            SizedBox(
              height: size.height*.045,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('Username',style: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey
              ),),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('@username',style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w600
              ),),
            ),

            SizedBox(
              height: size.height*.045,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('Email',style: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey
              ),),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('shahid@gmail.com',style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w600
              ),),
            ),

            SizedBox(
              height: size.height*.045,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('Phone Number',style: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey
              ),),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('92345939455',style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(
              height: size.height*.02,
            ),
            Container(
              height: size.height*.14,
              width: size.width*.90,
              decoration: BoxDecoration(
                  color: Color(0xff41caff),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: size.height*.05,
                  // ),
                  Container(
                      height:size.height*.04,
                      width: size.width*.16,
                      child: Image.asset('assets/images/upload_icons.png')),
                  Text('Add image',style:
                  TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SizedBox(
              height: size.height*.02,
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('Interests',style: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.w200
              ),),
            ),
            Container(
              width: size.width*.90,
              alignment: Alignment.centerLeft,
              child:  Text('Coffee, Sweets',style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(
              height: size.height*.18,
            ),
            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Edit Profile',
              textcolor: Colors.white, onTap: (){
               Navigator.pushNamed(context, RoutesName.EditProfile);
              }, wholewidth: size.width*.85,),
          ],
        ),
      ),
    );
  }
}
