import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
import 'package:ybm_business/routes/routes_name.dart';

class Buisness_add_new_profile extends StatefulWidget {
  const Buisness_add_new_profile({Key? key}) : super(key: key);

  @override
  _Buisness_add_new_profileState createState() => _Buisness_add_new_profileState();
}

class _Buisness_add_new_profileState extends State<Buisness_add_new_profile> {
  TextEditingController _title=TextEditingController();
  TextEditingController _descriptioon=TextEditingController();
  TextEditingController _price=TextEditingController();
 
  String dropdownValue = 'eng';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff41CAFF),
                Color(0xff00ACEF
                ),

              ],
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {  Navigator.pop(context);},),
        title: Text('Add New Menu'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.04,
              ),

              MyTextFieldWidget(hintText:'Title',check: false,textEditingController: _title,),
              SizedBox(
                height: size.height*.025,
              ),
              Container(
                  height: size.height*.16,
                  width: size.width*.85,
                  child: MyTextFieldWidget(hintText:'Offer Description',check: false,textEditingController: _descriptioon,)),
              SizedBox(
                height: size.height*.025,
              ),
              Container(
                height: size.height*.06,
                width: size.width*.85,
                decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    isExpanded: true,

                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                    elevation: 16,
                    // style: const TextStyle(color: Colors.deepPurple),

                    underline: Container(
                      //height: 2,
                      color: Colors.transparent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String> ['eng', 'french', 'Arabic', 'urdu']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(color: Color(0xff7a7a7a)),),
                      );
                    }).toList(),
                  ),
                ),
              ),
             // MyTextFieldWidget(hintText:'Category',IconRight: Icon(Icons.keyboard_arrow_down),check: false,),
              SizedBox(
                height: size.height*.025,
              ),
              MyTextFieldWidget(hintText:'Price',check: false, textEditingController: _price,),
              SizedBox(
                height: size.height*.025,
              ),
              Container(
                height: size.height*.025,
                width: size.width*.90,
                child:  Text('Product Image',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w600,color: Colors.black),),
              ),
              SizedBox(
                height: size.height*.025,
              ),
              Container(
                height: size.height*.12,
                width: size.width*.90,
                // alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: 1,
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
                height: size.height*.1,
              ),

              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Confirm',
                textcolor: Colors.white, onTap: (){
                  Navigator.pushNamed(context, RoutesName.appBottomnavigatiobar);
                }, wholewidth: size.width*.85,),
            ],
          ),
        ),
      ),
    );
  }
}
