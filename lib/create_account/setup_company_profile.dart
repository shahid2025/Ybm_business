
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
import 'package:ybm_business/routes/routes_name.dart';
import 'package:ybm_business/tabbar_class/screens/simple_map_screen.dart';
class SetUp_Company extends StatefulWidget {
  const SetUp_Company({Key? key}) : super(key: key);

  @override
  _SetUp_CompanyState createState() => _SetUp_CompanyState();
}

class _SetUp_CompanyState extends State<SetUp_Company> {

  TextEditingController _BuisnessName=TextEditingController();
  TextEditingController _Buisnessdescriptioon=TextEditingController();
  TextEditingController _BuisnessAddress=TextEditingController();
  TextEditingController _Vatregistrationnumber=TextEditingController();
  List <String> text=['Electronics','Foods','Auto','foods'];
  List colors = [Color(0xff41CAFF), Color(0xff41caff), Color(0xff41caff), Color(0xff41caff),];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.05,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: size.width*.30,
                      alignment: Alignment.centerLeft,
                      child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
                        Navigator.pop(context);
                      },),
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
                height: size.height*.01,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Setup Company Profile",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),fontWeight: FontWeight.w900),)),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.04,
                  width: size.width*.85,
                  child: Text("Add Your Company details to create an account",style:
                  TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),)),
              Container(
                height: size.height*.14,
                width: size.width*.85,
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
                height: size.height*.05,
              ),


              MyTextFieldWidget(hintText:'Buisness Name',IconLeft:Icons.person,check: true, textEditingController: _BuisnessName,),
              SizedBox(
                height: size.height*.03,
              ),
              Container(
                  height: size.height*.14,
                  child: MyTextFieldWidget(hintText:'Buisness Description',IconLeft:Icons.description,check: true,textEditingController: _Buisnessdescriptioon,)),

              SizedBox(
                height: size.height*.03,
              ),
              MyTextFieldWidget(hintText:'Buisness Address',IconLeft:Icons.person,check: true,textEditingController: _BuisnessAddress,),

              SizedBox(
                height: size.height*.03,
              ),
              Container(
                  height: size.height*.25,
                  width: size.width*.90,
                  child: SimpleMapScreen()
                //  Image.asset('assets/images/map_image.png',fit: BoxFit.cover,)
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Buisness Category",style: TextStyle(fontSize: 15,color: Colors.black,
                      fontWeight: FontWeight.w600),)),
              Container(

                height: size.height*.06,
                width: size.width*.85,
                decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(

                    decoration:  InputDecoration(
                      //  prefixIcon:Icon(Icons.person,size: 16,),
                        border: InputBorder.none,
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(9),
                        // ) ,


                        hintText: 'Type Business Category',hintStyle: TextStyle(fontSize: 12)
                    ),
                  ),
                ),
              ),

              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Social Media tags",style: TextStyle(fontSize: 15,color: Colors.black,
                      fontWeight: FontWeight.w600),)),
              // SizedBox(
              //   height: size.height*.01,
              // ),

              Container(
                height: size.height*.065,
                width: size.width*.92,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: size.height*.06,
                          width: size.width*.23,
                          decoration: BoxDecoration(
                              color: Color(0xff41CAFF),
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child: Text('Electronics'.toString(),style: TextStyle(color: Colors.white),),
                        ),
                      );}),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Images",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w900),)),

              Container(
                height: size.height*.12,
                width: size.width*.90,
               // alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,int index){
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(

                        color: Color(0xff41caff),
                        strokeWidth: 1,
                        child: Container(
                            height: size.height*.09,
                            width: size.width*.20,
                            alignment: Alignment.center,
                            child: Icon(Icons.add,color: Color(0xff41caff),)),
                      ),
                    );
                  },

                ),
              ),

              SizedBox(
                height: size.height*.01,
              ),


              MyTextFieldWidget(hintText:'VAT Reg.Number(Optional)',IconLeft:Icons.person,check: true,textEditingController: _Vatregistrationnumber,),
              SizedBox(
                height: size.height*.013,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Prof Of Ownership",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w900),)),
              Container(
                height: size.height*.12,
                width: size.width*.90,
                // alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,int index){
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(

                        color: Color(0xff41caff),
                        strokeWidth: 1,
                        child: Container(
                            height: size.height*.09,
                            width: size.width*.20,
                            alignment: Alignment.center,
                            child: Icon(Icons.add,color: Color(0xff41caff),)),
                      ),
                    );
                  },

                ),
              ),
              SizedBox(
                height: size.height*.02,
              ),

              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Confirm',
                textcolor: Colors.white, onTap: (){
                  Navigator.pushNamed(context, RoutesName.appBottomnavigatiobar);
                }, wholewidth: size.width*.85,),
              SizedBox(
                height: size.height*.03,
              )

            ],
          ),
        ),
      ),
    );
  }
}
