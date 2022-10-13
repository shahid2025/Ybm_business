import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ybm_business/bloc/register/register_bloc.dart';
import 'package:ybm_business/create_account/login_screen.dart';
import 'package:ybm_business/create_account/setup_company_profile.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
import 'package:ybm_business/routes/routes_name.dart';
import 'package:http/http.dart';
import 'package:ybm_business/services/googlesignin.dart';


class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  TextEditingController _fullName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();
  TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocConsumer(
        bloc: BlocProvider.of<RegisterBloc>(context),
        listener: (context, state) {
          if (state is RegisterSuccess) {
            Fluttertoast.showToast(
                toastLength: Toast.LENGTH_SHORT, // length
                gravity: ToastGravity.CENTER,    // location
                timeInSecForIosWeb: 1,
                msg:
                    "Account created succesfully");
            Navigator.pushNamed(context, RoutesName.setupcompany);
          }

          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is RegisterInitial) {
            return SingleChildScrollView(
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: size.height * .1,
                        width: size.width * .35,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/YBM_LOGO.png",
                        ),
                      ),
                      SizedBox(
                        height: size.height * .05,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          height: size.height * .05,
                          width: size.width * .85,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff41CAFF),
                                fontWeight: FontWeight.w900),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          height: size.height * .04,
                          width: size.width * .85,
                          child: Text(
                            'Add Your Details to create an account',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          )),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      MyTextFieldWidget(
                        hintText: 'Full Name',
                        IconLeft: Icons.person,
                        check: true,
                        textEditingController: _fullName,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextFieldWidget(
                        hintText: 'Email',
                        IconLeft: Icons.person,
                        check: true,
                        textEditingController: _email,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextFieldWidget(
                        hintText: 'Phone Number',
                        IconLeft: Icons.phone,
                        check: true,
                        textEditingController: _phonenumber,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextFieldWidget(
                        hintText: 'Password',
                        obscuretxt: _passwordVisible,
                        IconLeft: Icons.lock,
                        IconRight: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,

                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        // IconRight: Icon(Icons.remove_red_eye_outlined,size: 16,),
                        check: true,
                        textEditingController: _password,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ButtonWidget(
                        buttonColor: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        buttonText: 'Sign Up',
                        textcolor: Colors.white,
                        onTap: () {


    if (_formKey.currentState!.validate()) {
 _formKey.currentState!.save();
 BlocProvider.of<RegisterBloc>(context)
     .add(TheRegisterEvent(

   name: _fullName.text.trim(),
   email: _email.text.trim(),
   phonenumber: _phonenumber.text.trim(),
   password: _password.text.trim(),
 ));

                          // Navigator.pushNamed(context, RoutesName.setupcompany);
                        }
                        },
                        wholewidth: size.width * .85,
                      ),
                      SizedBox(height: size.height * .02),
                      Container(
                        height: size.height * .05,
                        width: size.width * .80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: size.height * .002,
                              width: size.width * .35,
                              color: Colors.grey,
                            ),
                            Text(
                              'OR',
                              style: TextStyle(fontSize: 12),
                            ),
                            Container(
                              height: size.height * .002,
                              width: size.width * .35,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * .02),
                      GestureDetector(
                        onTap: (){
                          BlocProvider.of<RegisterBloc>(context).add(GoogleSignInEvent());
                         // SignWithgoogle.signInWithGoogle();
                          // setState(() {
                          //
                          // });
                        },
                        child: Container(
                          height: size.height * .07,
                          width: size.width * .80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey),
                                  ),
                                  height: size.height * .05,
                                  width: size.width * .35,
                                  child: Row(children: [
                                    Container(
                                      height: 27,
                                      width: 27,
                                      //  child: Icon(Icons.facebook),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Image.asset(
                                          "assets/images/google.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: size.width * .02),
                                    Container(
                                      child: Text(
                                        'Signup With Google',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    )
                                  ])),
                              SizedBox(width: size.width * .05),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey),
                                  ),
                                  height: size.height * .05,
                                  width: size.width * .35,
                                  child: Row(children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      //  child: Icon(Icons.facebook),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Image.asset(
                                          "assets/images/facebook.png",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text('Signup With Facebook',
                                          style: TextStyle(fontSize: 09)),
                                    )
                                  ])),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * .02),
                      Container(
                        height: size.height * .07,
                        width: size.width * .80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account ?',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey)),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.Login);
                                },
                                child: Text(
                                  " Sign In",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff00ACEF)),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

}
