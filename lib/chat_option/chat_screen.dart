
import 'dart:ui';

import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () { Navigator.pop(context); },),
        title: Text('Chat'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
SizedBox(
                height: 20,
              ),
              Container(
                height:MediaQuery.of(context).orientation==Orientation.portrait?
                size.height*.70:
                size.height*.50,
                width: size.width*.90,
                child: ListView.builder(
                    itemCount:3,
                    itemBuilder: (context,int index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child:Column(
                              children: [
                                Container(
                                  width:size.width*.85,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage('assets/images/girls.png'),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context).size.width * .6),
                                        padding: const EdgeInsets.all(15.0),
                                        decoration: BoxDecoration(
                                          color: Color(0xffc4c4c4),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Text('gfg,dsjxsh hsdgs xchsxzhdcjh dgsz zxcsygdc   hsgdxz cysd xsd',
                                            // "${messages[i]['message']}",
                                            style:TextStyle(fontSize: 10,color: Color(0xff605953))
                                          // Theme.of(context).textTheme.
                                          // body1.apply(
                                          //   color: Colors.black87,
                                          // ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 20,
                                      // ),
                                      //
                                      // Text('08:43 AM',
                                      //   //"${messages[i]['time']}",
                                      //   style: TextStyle(fontSize: 12,color: Color(0xff938a9a)),
                                      //   // style: Theme.of(context).textTheme.body2.apply(color: Colors.grey),
                                      // ),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: size.height*.05,
                                ),
                                Container(
                                  width:size.width*.90,
                                  child: Row(
                                    children: [


                                      // Text('08:43 AM',
                                      //   //"${messages[i]['time']}",
                                      //   style: TextStyle(fontSize: 12,color: Color(0xff938a9a)),
                                      //   // style: Theme.of(context).textTheme.body2.apply(color: Colors.grey),
                                      // ),
                                      SizedBox(
                                        width: 90,
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context).size.width * .6),
                                        padding: const EdgeInsets.all(15.0),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            //bottomRight: Radius.circular(25),
                                          ),
                                        ),
                                        child: Text('gfg,dsjxsh hsdgs xchsxzhdcjh dgsz zxcsygdc   hsgdxz cysd xsd',
                                            // "${messages[i]['message']}",
                                            style:TextStyle(fontSize: 10,color: Colors.white)
                                          // Theme.of(context).textTheme.
                                          // body1.apply(
                                          //   color: Colors.black87,
                                          // ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            )


                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: size.height*.07,
              ),
              Container(

                height: size.height*.06,
                width: size.width*.85,
                decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,bottom: 5),
                  child: TextField(

                    decoration:  InputDecoration(
                       // prefixIcon:Icon(Icons.phone),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/send_icons.png'),
                      ),
                        border: InputBorder.none,
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(9),
                        // ) ,


                        hintText: 'Type Message'
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
