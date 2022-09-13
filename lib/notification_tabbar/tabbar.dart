import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/notification_tabbar/notification.dart';
import 'package:ybm_business/profile_screen/edit_buisness_profile.dart';

import 'notification_previous.dart';



class Tabbar_notification extends StatefulWidget {
  const Tabbar_notification({Key? key}) : super(key: key);

  @override
  _Tabbar_notificationState createState() => _Tabbar_notificationState();
}

class _Tabbar_notificationState extends State<Tabbar_notification> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  void _initStat(){
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  void dispose(){
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
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
        backgroundColor: Colors.blue,
        leading:IconButton( icon:Icon(Icons.arrow_back_ios), onPressed: () {  Navigator.pop(context); },),

        title: Text('Notifications',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                height: size.height*.1,
                  width: size.width*.1,
                  child: Image.asset('assets/drawer_icon_images/edit_icon.png')),
            ),
          )
        ],
      ),

      backgroundColor: Color(0xffe5e5e5),
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: Colors.black),
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     'Inbox',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   //leading: Icon(Icons.menu,color:Colors.black),
      //   centerTitle: true,
      //   actions: [
      //     GestureDetector(
      //       child: Padding(
      //         padding: const EdgeInsets.only(right: 10.0),
      //         child: Icon(Icons.search, color: Colors.black),
      //       ),
      //     )
      //   ],
      // ),
      body:
      Container(
       child: DefaultTabController(length: 2, child: Center(
         child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: [


           SizedBox(
             height: size.height*.03,
           ),



           Container(
             padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
             color: Colors.white,
             child: TabBar(
                 indicatorSize: TabBarIndicatorSize.label,
                 labelPadding: EdgeInsets.symmetric(horizontal: 2.0),
                 //labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
indicatorColor: Color(0xff00ACEF),
               padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
               controller: _tabController,
                 labelColor: Color(0xff00ACEF),
                 unselectedLabelColor: Colors.black,
                 tabs:
[
  Container(
    width: 40.0,
    child: Tab(text: 'New'),
  ),
  Container(
    width: size.width*.20,
    child: Tab(text: 'Previous'),
  ),
  // Tab(text:'Photos'),
  // Tab(text:'Map'),
  // Tab(text:'Reviews'),
]
             ),
           ),
                Expanded(
                  child: TabBarView(children: [
                    Notification1(),
                    Notification_previous(),

                  ]),
                )
              ],),
       ))

      ),


    );
  }
}
