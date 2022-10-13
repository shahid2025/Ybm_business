import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:ybm_business/bloc/register/register_bloc.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
import 'package:ybm_business/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body:
      BlocConsumer(
        bloc: BlocProvider.of<RegisterBloc>(context),
        listener: (context, state) {
          // TODO: implement listener
          if (state is RegisterSuccess) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AppBottomNavigationBar()));
           }
        },
  builder: (context, state) {
    print("2"+ state.toString());
    if (state is RegisterInitial) {
    return SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),

              Container(
                height: size.height*.1,
                width: size.width*.35,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/YBM_LOGO.png",
                ),
              ),
              SizedBox(
                height: size.height*.05,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Login",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                      fontWeight: FontWeight.w900),)),


              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.04,
                  width: size.width*.85,
                  child: Text('Enter account Details',style: TextStyle(fontSize: 15,color: Colors.grey),)),
              SizedBox(
                height: size.height*.03,
              ),
              MyTextFieldWidget(hintText:'Username',IconLeft:Icons.person_outline_rounded,check: true, textEditingController: _email,),
              SizedBox(
                height: 20,
              ),

              MyTextFieldWidget(hintText:'Password',IconLeft:Icons.lock,check: true,textEditingController: _password,
                IconRight: Icon(Icons.remove_red_eye_outlined,size: 16,),),

              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.forgetPassword);
                },
                child: Container(
                  width: size.width*.80,
                    alignment: Alignment.centerLeft,
                    child: Text('Forgot Password ?', style: TextStyle(fontSize: 12,color: Color(0xff00ACEF)))),
              ),
              SizedBox(
                height: 50,
              ),

              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Login',
                textcolor: Colors.white, onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AppBottomNavigationBar()));
                 // Navigator.pushNamed(context, RoutesName.appBottomnavigatiobar);
                }, wholewidth: size.width*.85,),

              SizedBox(
                  height:size.height*.08
              ),
              Container(
                height: size.height*.07,
                width: size.width*.80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height*.002,
                      width: size.width*.35,
                      color: Colors.grey,
                    ),
                    Text('OR',style: TextStyle(fontSize: 12),),
                    Container(
                      height: size.height*.002,
                      width: size.width*.35,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

              SizedBox(
                  height:size.height*.0
              ),
              GestureDetector(
                onTap: (){
                  BlocProvider.of<RegisterBloc>(context).add(GoogleSignInEvent());
                },
                child: Container(
                  height: size.height*.07,
                  width: size.width*.80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(width: 0.0, color: Colors.grey),
                          ),
                          height: size.height*.05,
                          width: size.width*.35,
                          child: Row(
                              children: [
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
                                SizedBox(
                                    width:size.width*.02
                                ),
                                Container(
                                  child: Text('Login With Google',style: TextStyle(fontSize: 10),),
                                )
                              ])),
                      SizedBox(
                          width:size.width*.05
                      ),
                      GestureDetector(
                        onTap: (){
                          signInWithFacebook();
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 0.0, color: Colors.grey),
                            ),
                            height: size.height*.05,
                            width: size.width*.35,
                            child: Row(
                                children: [
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
                                    child: Text('Login With Facebook',style: TextStyle(fontSize: 09)),
                                  )
                                ])),
                      ),
                    ],),
                ),
              ),


              SizedBox(
                  height:size.height*.03
              ),
              Container(
                height: size.height*.07,
                width: size.width*.80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Already have an account ?', style: TextStyle(fontSize: 12,color: Colors.grey)),

                    GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, RoutesName.Signup);
                        },
                        child:
                        Text(" Sign up", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color(0xff00ACEF)),)),





                  ],
                ),
              ),


            ],
          ),
        ),
      );
    } else {
      return Center(child: CircularProgressIndicator());
    }
  },
),
    );
  }
  //this is for facebook function
  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login(
        permissions: ['email','public profile','user_birthday']
    );

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    final userData = await FacebookAuth.instance.getUserData();
   // userEmail = userData['email'];

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
