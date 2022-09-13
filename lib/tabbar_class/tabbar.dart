import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/buisness_profile/buisness_profile_add-new_profile.dart';

import 'package:ybm_business/profile_screen/edit_buisness_profile.dart';

import 'about.dart';
import 'map.dart';
import 'photo.dart';
import 'reviewa.dart';
import 'services.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  void _initStat(){
    _tabController = TabController(vsync: this, length: 5);
    super.initState();
  }

  void dispose(){
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Color(0xffe5e5e5),

      body:
      Container(
       child: DefaultTabController(length: 5, child: Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,children: [

           Stack(

             children: [
               Container(
               height: size.height*.32,
               width: size.width,
               child: Image.asset('assets/images/car_images.jpg',fit: BoxFit.cover,),
             ),
               Positioned(

                 top: 30,
                   child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: () {  },)),
               Positioned(
                 right: 15,
                 top: 30,
                 child: Container(
                     height: 25,
                     width: 25,
                     child: Image.asset('assets/images/notificationimage.png',color: Colors.white,)),

               ),
               Positioned(
                 left: 15,
                 bottom: 20,
                 child: Container(
                   width: size.width*.92,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         height: size.height*.04,
                         width: size.width*.20,
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(19)
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.star,color: Colors.amber,),
                             Text('4.8'),

                           ],
                         ),
                       ),
                       Container(
                         height: size.height*.04,
                         width: size.width*.10,
                         decoration: BoxDecoration(
                             color: Colors.white,
                            shape: BoxShape.circle
                         ),
                         child: Icon(Icons.more_vert,color: Colors.black,),
                       ),
                       Container(
                         height: size.height*.04,
                         width: size.width*.10,
                         decoration: BoxDecoration(
                             color: Colors.white,
                            shape: BoxShape.circle
                         ),
                         child: Icon(Icons.redo ,color: Colors.black,),
                       ),
                       Container(
                         height: size.height*.04,
                         width: size.width*.10,
                         decoration: BoxDecoration(
                             color: Colors.white,
                            shape: BoxShape.circle
                         ),
                         child: Icon(Icons.bookmark_border,color: Colors.black,),
                       ),
                       Container(
                         height: size.height*.04,
                         width: size.width*.10,
                         decoration: BoxDecoration(
                             color: Colors.white,
                            shape: BoxShape.circle
                         ),
                         child: Icon(Icons.chat_outlined,color: Colors.black,),
                       ),
                       Container(
                         height: size.height*.04,
                         width: size.width*.10,
                         decoration: BoxDecoration(
                             color: Colors.white,
                            shape: BoxShape.circle
                         ),
                         child: Icon(Icons.thumb_up_alt_outlined,color: Colors.black,),
                       ),
                       Container(
                         height: size.height*.04,
                         width: size.width*.20,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(19)
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset('assets/images/visible.png',),
                             Text('25k'),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ]
           ),
           Container(
             alignment: Alignment.centerLeft,
             height: size.height*.05,
             width: size.width,
             decoration: BoxDecoration(
                 color: Color(0xff00ACEF),
               borderRadius: BorderRadius.only(
bottomRight: Radius.circular(12),
                 bottomLeft: Radius.circular(12)
               )
             ),
child: Padding(
  padding: const EdgeInsets.only(left: 20.0),
  child:   Text('Click here to redeem your 50% time offer',style: TextStyle(color: Colors.white),),
),
           ),
           SizedBox(
             height: size.height*.01,
           ),
           Container(
             width: size.width*.80,
             child: Row(
           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width*.05,
                ),
                 Container(

                     alignment: Alignment.centerLeft,
                     width: size.width*.43,
                     child: Text('Bros Car Club',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(
                  width: size.width*.25,
                ),
                 GestureDetector(
                   onTap: (){
                     Navigator.push(
                       context,
                       PageRouteBuilder(
                         pageBuilder: (c, a1, a2) => Buisness_add_new_profile(),
                             //Edit_buisness_proflie(),
                         transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                         transitionDuration: Duration(milliseconds: 100),
                       ),
                     );
                   },
                   child: Container(
                       decoration: BoxDecoration(
                           color: Color(0xff00ACEF),
                           borderRadius: BorderRadius.circular(12)
                       ),
                      alignment: Alignment.center,
                       height: size.height*.035,
                       width: size.width*.20,
                       child: Text('Edit',style: TextStyle(fontSize: 13,
                           fontWeight: FontWeight.bold,color: Colors.white),)),
                 ),
               ],
             ),
           ),
           SizedBox(
             height: size.height*.01,
           ),
           Container(
             width: size.width*.90,
             child: Row(
               children: [
                 SizedBox(
                   width: size.width*.05,
                 ),
                 Icon(Icons.location_on_outlined,color: Colors.black,size: 18,),
                 SizedBox(
                     width:size.width*.02
                 ),

                 Container(
                     alignment: Alignment.centerLeft,
                     width: size.width*.60,
                     child: Text('71-75 Shelton Street, Covent Garden London, England',style:
                     TextStyle(fontSize: 12,fontWeight:
                     FontWeight.w500),)),
               ],
             ),
           ),

           SizedBox(
             height: size.height*.01,
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
    child: Tab(text: 'About'),
  ),
  Container(
    width: size.width*.20,
    child: Tab(text: 'Services'),
  ),
  Tab(text:'Photos'),
  Tab(text:'Map'),
  Tab(text:'Reviews'),
]
             ),
           ),
                Expanded(
                  child: TabBarView(children: [
                    About(),
                   Services(),
                   Photo(),
                   Map(),
                   Reviews(),

                  ]),
                )
              ],),
       ))

      ),


    );
  }
}

