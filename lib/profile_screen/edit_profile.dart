import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';

import '../home/home_screen.dart';
class Edit_profile1 extends StatefulWidget {
  const Edit_profile1({Key? key}) : super(key: key);

  @override
  _Edit_profile1State createState() => _Edit_profile1State();
}

class _Edit_profile1State extends State<Edit_profile1> {
  TextEditingController _fullName=TextEditingController();
  TextEditingController _username=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _phonenumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
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
  leading: IconButton(
    icon: Icon(Icons.arrow_back_ios), onPressed: () {

      Navigator.pop(context);

  },
  ),
  centerTitle: true,
  title: Text('Edit Profile'),
),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*.06,
            ),
            MyTextFieldWidget(hintText:'Full Name',IconLeft:Icons.person,check: true, textEditingController: _fullName,),
            SizedBox(
              height: size.height*.03,
            ),
            MyTextFieldWidget(hintText:'Username',IconLeft:Icons.person,check: true,textEditingController: _username,),
            SizedBox(
              height: size.height*.03,
            ),
            MyTextFieldWidget(hintText:'Email',IconLeft:Icons.email_outlined,check: true,textEditingController: _email,),
            SizedBox(
              height: size.height*.03,
            ),

            MyTextFieldWidget(hintText:'Phone Number',IconLeft:Icons.phone,check: true,textEditingController: _phonenumber,),


            SizedBox(
              height: size.height*.37,
            ),

            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Save Changes',
              textcolor: Colors.white, onTap: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => HomeScreen(),
                    transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 100),
                  ),
                );
              }, wholewidth: size.width*.85,),

          ],
        ),
      ),
    );
  }
}
