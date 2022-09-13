import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String dropdownValue = 'eng';
  bool status = false;
  bool status1 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
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
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: size.width*.02,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width*.40,
                      height: size.height*.06,
                      alignment: Alignment.centerLeft,

                      child: Text('Push Notifications',style:TextStyle(fontSize: 15,fontWeight:
                      FontWeight.w500,color: Color(0xff7a7a7a))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: FlutterSwitch(
                        width: 43.0,
                        height: 25.0,
                        valueFontSize: 10.0,
                        toggleSize: 12.0,
                        value: status,
                        borderRadius: 20.0,
                        //padding: 2.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: size.width*.02,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width*.40,
                      height: size.height*.06,
                      alignment: Alignment.centerLeft,

                      child: Text('Dark Mode',style:TextStyle(fontSize: 15,fontWeight:
                      FontWeight.w500,color: Color(0xff7a7a7a))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: FlutterSwitch(
                        width: 43.0,
                        height: 25.0,
                        valueFontSize: 10.0,
                        toggleSize: 12.0,
                        value: status1,
                        borderRadius: 20.0,
                        //padding: 2.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status1= val;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: size.width*.02,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width*.40,
                      height: size.height*.06,
                      alignment: Alignment.centerLeft,

                      child: Text('Language',style:TextStyle(fontSize: 15,fontWeight:
                      FontWeight.w500,color: Color(0xff7a7a7a))
                      ),
                    ),
                  ),
        DropdownButton<String>(
          value: dropdownValue,
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
        )
                ],
              ),
            ),
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width*.40,
                  height: size.height*.06,
                  alignment: Alignment.centerLeft,

                  child: Text('Youtube Tutorials',style:TextStyle(fontSize: 15,fontWeight:
                  FontWeight.w500,color: Color(0xff7a7a7a))
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width*.40,
                  height: size.height*.06,
                  alignment: Alignment.centerLeft,

                  child: Text('Terms & Conditions',style:TextStyle(fontSize: 15,fontWeight:
                  FontWeight.w500,color: Color(0xff7a7a7a))
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width*.40,
                  height: size.height*.06,
                  alignment: Alignment.centerLeft,

                  child: Text('About us',style:TextStyle(fontSize: 15,fontWeight:
                  FontWeight.w500,color: Color(0xff7a7a7a))
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width*.40,
                  height: size.height*.06,
                  alignment: Alignment.centerLeft,

                  child: Text('Contact us',style:TextStyle(fontSize: 15,fontWeight:
                  FontWeight.w500,color: Color(0xff7a7a7a))
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height*.03,
            ),
            Container(
              width: size.width*.90,
              height: size.height*.06,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width*.40,
                  height: size.height*.06,
                  alignment: Alignment.centerLeft,

                  child: Text('Logout',style:TextStyle(fontSize: 15,fontWeight:
                  FontWeight.w500,color: Color(0xff00ACEF))
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
