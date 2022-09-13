
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';

import 'offer.dart';
class AddNewOffer extends StatefulWidget {
  const AddNewOffer({Key? key}) : super(key: key);

  @override
  _AddNewOfferState createState() => _AddNewOfferState();
}

class _AddNewOfferState extends State<AddNewOffer> {
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
        title: Text('Add New Offer'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.04,
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
                    Text('Upload company image',style:
                    TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              SizedBox(
                height: size.height*.04,
              ),
               MyTextFieldWidget(hintText:'Offer Title',check: false,),
              SizedBox(
                height: size.height*.025,
              ),

              MyTextFieldWidget(hintText:'Offer Description',check: false,),
              SizedBox(
                height: size.height*.025,
              ),
              Container(
                height: size.height*.06,
                width: size.width*.85,
                child: Row(
                  children: [
                    Container(
                        width: size.width*.41,
                        child: MyTextFieldWidget(hintText:'Offer Start From',check: false,)),
                    SizedBox(
                      width: size.width*.02,
                    ),
                    Container(
                        width: size.width*.41,
                        child: MyTextFieldWidget(hintText:'Offer End on',check: false,)),
                  ],
                ),
              ),

              SizedBox(
                height: size.height*.025,
              ),

              MyTextFieldWidget(hintText:'Discount Percentage',check: false,),
              SizedBox(
                height: size.height*.14,
              ),


              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Confirm',
                textcolor: Colors.white, onTap: (){
                  Navigator.pop(context);
                  //Navigator.pushNamed(context, RoutesName.setupcompany);
                }, wholewidth: size.width*.85,),


            ],
          ),
        ),
      ),
    );
  }
}
