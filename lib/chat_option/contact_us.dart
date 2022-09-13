
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
class Contact_Screen extends StatefulWidget {
  const Contact_Screen({Key? key}) : super(key: key);

  @override
  _Contact_ScreenState createState() => _Contact_ScreenState();
}

class _Contact_ScreenState extends State<Contact_Screen> {
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
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {  Navigator.pop(context);},),
        title: Text('Contact Us'),
      ),
      body:
      Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*.016,
            ),
            Container(
              height: size.height*.05,
              width: size.width*.90,
              alignment: Alignment.center,
              child: Text('Contact Us',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black))
              ,
            ),
            SizedBox(
              height: size.height*.016,
            ),
            Container(
              height: size.height*.05,
              width: size.width*.80,
              alignment: Alignment.center,
              child: Text('Lorem ipsum may be used as a placeholder before final copy is available.',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black))
              ,
            ),
            SizedBox(
              height: size.height*.016,
            ),


            Container(

              height: size.height*.06,
              width: size.width*.85,
              decoration: BoxDecoration(
                  color: Color(0xfff0f0f0),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: TextField(

                  decoration:  InputDecoration(
                      //prefixIcon:Icon(Icons.search),
                      //  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(9),
                      // ) ,


                      hintText: 'Email'
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height*.016,
            ),
            Container(

              height: size.height*.20,
              width: size.width*.85,
              decoration: BoxDecoration(
                  color: Color(0xfff0f0f0),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: TextField(

                  decoration:  InputDecoration(
                    //isDense: true,
                      //prefixIcon:Icon(Icons.search),
                      //  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(9),
                      // ) ,


                      hintText: 'Message'
                  ),
                ),
              ),
            ),

            SizedBox(
              height: size.height*.3,
            ),
            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Send Now',
              textcolor: Colors.white, onTap: (){
                //  Navigator.pushNamed(context, RoutesName.EditProfile);
              }, wholewidth: size.width*.85,),



          ],
        ),
      ),
    );
  }
}
