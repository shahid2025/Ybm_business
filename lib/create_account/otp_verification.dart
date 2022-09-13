import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ybm_business/create_account/reset_password.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';

class Otpverification extends StatefulWidget {
  const Otpverification({Key? key}) : super(key: key);

  @override
  _OtpverificationState createState() => _OtpverificationState();
}

class _OtpverificationState extends State<Otpverification> {
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
                  child: Text("OTP Verification",style: TextStyle(fontSize: 25,color: Color(0xff41caff),fontWeight: FontWeight.w900),)),


              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.04,
                  width: size.width*.85,
                  child: Text('Enter the Code you recieved on your phone number',style:
                  TextStyle(fontSize: 12,color: Colors.grey),)),
              SizedBox(
                height: size.height*.03,
              ),


              Container(
                width: size.width*.80,
                child: OtpTextField(
                  textStyle: TextStyle(color: Colors.black),
                  numberOfFields: 4,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                borderColor:  Color(0xfff0f0f0),
focusedBorderColor:  Color(0xfff0f0f0),

                 filled: true,
                 borderRadius: BorderRadius.circular(7),
                 fieldWidth: size.width*.14,
                 fillColor: Color(0xfff0f0f0),
                enabledBorderColor :   Color(0xfff0f0f0),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: false,
                  //runs when a code is typed in

                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        }
                    );
                  }, // end onSubmit
                ),
              ),

              SizedBox(
                height: size.height*.30,
              ),

              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Verify',
                textcolor: Colors.white, onTap: (){
                  Navigator.pushNamed(context, RoutesName.resetpassword);
                }, wholewidth: size.width*.80,),

              SizedBox(
                  height:size.height*.13
              ),
              Container(
                height: size.height*.07,
                width: size.width*.80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Don\'t Receive code ?', style: TextStyle(fontSize: 12,color: Colors.black)),

                    GestureDetector(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   PageRouteBuilder(
                          //     pageBuilder: (c, a1, a2) => Login(),
                          //     transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                          //     transitionDuration: Duration(milliseconds: 100),
                          //   ),
                          // );

                        },
                        child:
                        Text(" Resend code", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                            color: Color(0xff41caff)),)),





                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
