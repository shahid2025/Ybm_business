
import 'dart:ui';

import 'package:flutter/material.dart';

import 'chat_screen.dart';
class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
        automaticallyImplyLeading: false,
        leading:   IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios),),

        title:  Text('Messages',style: TextStyle(
            fontSize: 15,fontWeight: FontWeight.bold
        ),),


      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.02,
              ),
              Container(

                height: size.height*.06,
                width: size.width*.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(

                  decoration:  InputDecoration(
                      prefixIcon:Icon(Icons.search,color: Color(0xff7A7A7A),size: 16,),
                    //  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(9),
                      // ) ,


                      hintText: 'Search chat',hintStyle: TextStyle(color: Color(0xff7A7A7A),fontSize: 14)
                  ),
                ),
              ),
          GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => ChatScreen(),
                    transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 100),
                  ),
                );
              },
                child: Container(
                  height: size.height*.75,
                  width: size.width*.90,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 6,
                      itemBuilder: (BuildContext context,int index){
                        return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: size.height*.1,
                              width: size.width*.89,
                              child: Row(
                                children: [
                                  Container(
                                    width: size.width*.23,
                                    child: CircleAvatar(
                                      radius:27,
                                      backgroundImage: AssetImage('assets/images/girls.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width*.012,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: size.width*.6,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: size.height*.02,
                                        ),
                                        Container(
                                            alignment:Alignment.centerLeft,
                                            child: Text('Julia Smith',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black))),
                                        Container(
                                          width: size.width*.6,
                                          child: Text(' Lorem ipsum may be used as a placeholder before final copy is available.',
                                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w100,color: Colors.black)),
                                        ),


                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            )




                        );}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
