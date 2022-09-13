import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:ybm_business/buisness_profile/searches_buisness.dart';

import 'package:ybm_business/chat_option/about.dart';
import 'package:ybm_business/chat_option/booked_marked.dart';

import 'package:ybm_business/chat_option/contact_us.dart';
import 'package:ybm_business/chat_option/faqs.dart';
import 'package:ybm_business/chat_option/message.dart';
import 'package:ybm_business/chat_option/setting.dart';
import 'package:ybm_business/chat_option/term_&_Conditions.dart';
import 'package:ybm_business/profile_screen/my_profile.dart';
import 'package:ybm_business/routes/routes_name.dart';
import '../notification_tabbar/tabbar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
 @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 List<_drawerData> naviData = <_drawerData>[];
 TooltipBehavior? _tooltipBehavior;


 @override
  void initState() {
   _tooltipBehavior = TooltipBehavior(enable: true);
    // TODO: implement initState
    super.initState();
    naviData.add(_drawerData('assets/drawer_icon_images/person.png', 'Profile'));
    naviData.add(_drawerData('assets/drawer_icon_images/person.png', 'My Business Listing'));
    naviData.add(_drawerData('assets/drawer_icon_images/notification.png', 'Notification'));
    naviData.add(_drawerData('assets/drawer_icon_images/chat.png', 'Chat'));
    naviData.add(_drawerData('assets/drawer_icon_images/events.png', 'Events'));
    naviData.add(_drawerData('assets/drawer_icon_images/bookmark.png', 'Bookmarked Businesses'));
    naviData.add(_drawerData('assets/drawer_icon_images/search.png', 'Business Search'));
    // naviData.add(_drawerData('assets/drawer_icon_images/YouTube.png', 'YouTube Tutorials'));
    naviData.add(_drawerData('assets/drawer_icon_images/faqs.png', 'FAQ'));
    naviData.add(_drawerData('assets/drawer_icon_images/faqs.png', 'Help'));
    naviData.add(_drawerData('assets/drawer_icon_images/settings.png', 'Settings'));
    naviData.add(_drawerData('assets/drawer_icon_images/contact_us_icons.jpg', 'Contacts Us'));
  }
 bool status = false;
  var scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        bool? result = await _onBackPressed();
        if (result == null) {
          result = false;
        }
        return result;
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
            child: Column(


//mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 210,
                  width: 305,
                  child: DrawerHeader(
                      decoration: BoxDecoration(color: Color(0xff00ACEF),),
                      child: Column(

                        children: [

                          Container(
                              height: size.height*.05,
                              width: size.width*.90,
                              alignment: Alignment.centerLeft,
                              child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: () {



                                Navigator.pop(context);

                              },)),
                          Container(
                              height: size.height*.1,
                              width: size.width*.50,
                              child: Image.asset('assets/images/ybmlogo.png')),
                        ],



                      )),
                ),
                Container(
                  height: size.height*.52,
                  width: size.width*.75,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),

                     shrinkWrap: true,
                  // physics:    const ClampingScrollPhysics(),
                   // physics:   NeverScrollableScrollPhysics(),
                     //physics: FixedExtentScrollPhysics(),
                      itemCount: naviData.length,
                      itemBuilder: (context,int index){
                    return GestureDetector(
                      onTap: (){
                        if    (naviData[index].text =='Profile') {
                          Navigator.pushNamed(context, RoutesName.MyProfile);
                        }
                     else if    (naviData[index].text =='My Business Listing') {

                     }

                     else if    (naviData[index].text =='Notification') {
                       Navigator.pushNamed(context, RoutesName.tabbar_notification);
                     }
                     else if (naviData[index].text=='Chat') {
                       Navigator.pushNamed(context, RoutesName.MessageScreen);
                     }
                     else if (naviData[index].text =='Events')
                        {

                        }
                     else if    (naviData[index].text =='Bookmarked Businesses')
                        {
                          Navigator.pushNamed(context, RoutesName.BookedMarkedScreen);
                        }
                     else if  (naviData[index].text =='Business Search') {
                       Navigator.pushNamed(context, RoutesName.searchTabbarScreen);
                     }
                     // else if (naviData[index].text =='YouTube Tutorials')
                     //    {
                     //
                     //    }
                     else if  (naviData[index].text =='FAQ') {
                          Navigator.pushNamed(context, RoutesName.Faqs_Screen);
                     }
                     else if    (naviData[index].text =='Help')
                        {
                          //Navigator.pushNamed(context, RoutesName.Faqs_Screen);
                        }
                     else if   (naviData[index].text =='Settings')
{                     Navigator.pushNamed(context, RoutesName.Setting);
}
                     else if  (naviData[index].text =='Contacts Us')
                     {
                       Navigator.pushNamed(context, RoutesName.Contact_us);
                     }
                     },
                      child: Container(
                        height: size.height*.04,
                        child: Row(
                          children: [
                          Container(
                            height: size.height*.02,
                            width: size.width*.05,
                            child: Image.asset(naviData[index].images,fit: BoxFit.cover,),
                          ),
                        SizedBox(
                          width: size.width*.03,
                        ),
                        Text(naviData[index].text,style:TextStyle(fontSize: 13)),
                            Container(
                              child: (index==2)?  Padding(
                                padding: const EdgeInsets.only(left: 100.0),
                                child: Container(
                                  child: FlutterSwitch(
                                    width: 43.0,
                                    height: 22.0,
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
                              ):Container(),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                Container(
                  height: size.height*.003,
                  width: size.width,
                  color: Color(0xffC4C4C4),
                ),
                SizedBox(
                  height: size.height*.02,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesName.term_condition);
                  },
                  child: Container(
                    height: size.height*.035,
                    width: size.width*.75,
                    child: Text('Terms & Cnditions',style: TextStyle(fontSize: 12,color:Color(0xff000000).withOpacity(.5)),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesName.about_us);
                  },
                  child: Container(
                    height: size.height*.03,
                    width: size.width*.75,
                    child: Text('About us',style: TextStyle(fontSize: 12,color: Color(0xff000000).withOpacity(.5)),),
                  ),
                ),
                Container(
                  height: size.height*.03,
                  width: size.width*.75,
                  child: Text('Logout',style: TextStyle(fontSize: 12,color: Color(0xff055473).withOpacity(.5)),),
                ),




              ],
            )

        ),
        appBar: AppBar(
          elevation: 0,
backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title:Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                  onTap:(){
                //  Scaffold.of(context).openDrawer();
                scaffoldKey.currentState?.openDrawer();
            // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        },
                    child: Container(
                        height: 13,
                        child: Image.asset('assets/images/menuimage.png',color: Colors.black,)),
                  ),
                  Container(
                    height: size.height*.08,
                    width: size.width*.27,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/YBM_LOGO.png"
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.tabbar_notification);
                    },
                    child: Container(
                        height: 25,
                        width: 25,
                        child: Image.asset('assets/images/notificationimage.png',color: Colors.black,)),
                  ),
                ],),
            )



        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: size.height*.08,
                  width: size.width,
                  alignment: Alignment.center,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.bottomRight,
                     stops: [0.0, 1.0],
                     colors: [
                       Color(0xff41CAFF),
                       Color(0xff00ACEF),
                     ],
                   ),
                 ),
                  child:Text('Dashboard',style: TextStyle(fontSize: 15,color: Colors.white),) ,
                ),
                SizedBox(
                  height: size.height*.025,
                ),
                Container(
                  height: size.height*.1,
                  width: size.width*.90,
                  child: Row(
                    children: [
                      Container(
                        height: size.height*.1,
                        width: size.width*.43,
                        decoration: BoxDecoration(
                          color: Color(0xff00ACEF),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height*.01,
                            ),
                            Container(
                              child: Row(
                                children: [
                                 Container(
                                   height: size.height*.04,
                                   width: size.width*.17,
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                      shape: BoxShape.circle
                                      // borderRadius: BorderRadius.circular(12)
                                   ),
                                   child: Icon(Icons.star,size: 16,color: Colors.blue,),
                                 ),
                                  Text('4.9',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.white),)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height*.01,
                            ),
                            Container(
                              width: size.width*.35,
                              child:  Text('253 reviews',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400,color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width*.04,
                      ),
                      Container(
                        height: size.height*.1,
                        width: size.width*.43,
                        decoration: BoxDecoration(
                          color: Color(0xff00ACEF),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height*.01,
                            ),
                            Container(
                              child: Row(
                                children: [
                                 Container(
                                   height: size.height*.04,
                                   width: size.width*.17,
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                      shape: BoxShape.circle
                                      // borderRadius: BorderRadius.circular(12)
                                   ),
                                   child: Icon(Icons.remove_red_eye_outlined,size: 16,color: Colors.blue,),
                                 ),
                                  Text('45.5k',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.white),)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height*.01,
                            ),
                            Container(
                              width: size.width*.35,
                              child:  Text('Views',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400,color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height*.025,
                ),
                Container(
                    height: size.height*.2,
                    child: SfCartesianChart(

                        primaryXAxis: CategoryAxis(),
                        // Chart title

                      //  title: ChartTitle(text: 'Half yearly sales analysis'),
                        // Enable legend
                       // legend: Legend(isVisible: true),
                      //  Enable tooltip,
                        tooltipBehavior: _tooltipBehavior,
plotAreaBackgroundColor: Colors.white,
                        series: <LineSeries<SalesData, String>>[
                          LineSeries<SalesData, String>(
                              dataSource:  <SalesData>[
                                SalesData('mon', 5),
                                SalesData('tue', 8),
                                SalesData('wed', 3),
                                SalesData('thu', 2),
                                SalesData('fri', 4),
                                SalesData('sat', 4),
                                SalesData('sun', 4),
                              ],
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales,
                              // Enable data label
                            //  dataLabelSettings: DataLabelSettings(isVisible: true)
                          )
                        ]
                    )
                ),

                SizedBox(
                  height: size.height*.025,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: size.width*.90,
                  child:  Text('Recent Reviews',style: TextStyle(fontSize: 15,
                      fontWeight:FontWeight.w600,color: Colors.black),),
                ),

                Container(
                  child: Column(
                    children: [
                      Container(
                        //  alignment: Alignment.centerLeft,
                          width: size.width*.90,
                          height: size.height*.45,
                          child:ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context,int index)
                              {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: size.width*.90,
                                    height: size.height*.1,
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage('assets/images/katrina.jpg'),
                                          radius: 28,
                                        ),
                                        SizedBox(
                                          width: size.width*.05,
                                        ),
                                        Container(
                                          width: size.width*.55,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: size.height*.014,
                                              ),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      child: Text('John doe',style:
                                                      TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),),
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.star,color: Colors.amber,size: 14,),
                                                          Container(
                                                            child: Text('4.8',style:
                                                            TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              SizedBox(
                                                height: size.height*.014,
                                              ),
                                              Container(
                                                //   width: ,
                                                child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                                    'Lorem Ipsum has been the industry.',style:
                                                TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)),),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                          )
                      ),

                    ],
                  ),
                )





      ])),
        )),
    );
  }

 Future<bool?> _onBackPressed() async {
   return showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           title: const Center(
               child: const Text(
                 "Warning!",
                 style: TextStyle(color: Colors.red),
               )),
           content: const Text(
             "Are you sure you want to Exit",
             style: const TextStyle(color: Colors.blue),
             textAlign: TextAlign.center,
           ),
           actions: [
             TextButton(
                 onPressed: () {
                   Navigator.of(context).pop(true);
                 },
                 child: const Text("Yes")),
             TextButton(
                 onPressed: () {
                   Navigator.of(context).pop(false);
                 },
                 child: const Text("No")),
           ],
         );
       });
 }
}

class _drawerData {
  final String images;
  final String text;
  _drawerData(this.images, this.text);
}
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}