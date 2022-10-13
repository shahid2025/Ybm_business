

import 'package:flutter/material.dart';
import 'package:ybm_business/create_account/otp_verification.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
import 'package:ybm_business/routes/routes_name.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  TextEditingController _phone =TextEditingController();
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
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        child:Icon(Icons.arrow_back_ios,

                        )
                      ),
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
                  child: Text("Forget Password",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),fontWeight: FontWeight.w900),)),


              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.04,
                  width: size.width*.85,
                  child: Text('Enter Phone Number to reset Password',style: TextStyle(fontSize: 12,color: Colors.grey),)),
              SizedBox(
                height: size.height*.03,
              ),
              MyTextFieldWidget(hintText:'Phone Number',IconLeft:Icons.phone,check: true, textEditingController: _phone,),
            SizedBox(
                height: size.height*.35,
              ),


              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Confirm',
                textcolor: Colors.white, onTap: (){
                  Navigator.pushNamed(context, RoutesName.Otpverification);
                }, wholewidth: size.width*.85,),

            ],
          ),
        ),
      ),
    );
  }
}
