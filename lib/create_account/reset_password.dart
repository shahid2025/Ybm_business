import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
import 'package:ybm_business/packages/packages_1.dart';
import 'package:ybm_business/routes/routes_name.dart';

class amii extends StatefulWidget {
  const amii({Key? key}) : super(key: key);

  @override
  _amiiState createState() => _amiiState();
}

class _amiiState extends State<amii> {
  TextEditingController _password=TextEditingController();
  TextEditingController _Confirmnewpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                height: size.height*.05,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Reset Password",style: TextStyle(fontSize: 25,color: Color(0xff41caff),fontWeight: FontWeight.w900),)),


              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.04,
                  width: size.width*.85,
                  child: Text('Enter New Password to access the account',style: TextStyle(fontSize: 12,color: Colors.grey),)),
              SizedBox(
                height: size.height*.03,
              ),
              MyTextFieldWidget(hintText:'Password',IconLeft:Icons.lock,check: true,
                IconRight: Icon(Icons.remove_red_eye_outlined,size: 16,), textEditingController: _password,),
              SizedBox(
                height: size.height*.03,
              ),
              MyTextFieldWidget(hintText:'Confirm New Password',IconLeft:Icons.lock,check: true,
                IconRight: Icon(Icons.remove_red_eye_outlined,size: 16,),textEditingController: _Confirmnewpass,),

              SizedBox(
                height: size.height*.35,
              ),
              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Confirm',
                textcolor: Colors.white, onTap: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => Packages_1(),
                      transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 100),
                    ),
                  );
                  // Navigator.pushNamed(context, RoutesName.resetpassword);
                }, wholewidth: size.width*.85,),
            ],
          ),
        ),
      ),
    );
  }
}

