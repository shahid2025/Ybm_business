import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ybm_business/buisness_profile/find_buisness.dart';

import 'package:ybm_business/home/offer.dart';
import 'package:ybm_business/home/webinar.dart';


import '../home/home_screen.dart';

import '../tabbar_class/tabbar.dart';




class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _pages = [

    HomeScreen(),
    Find_buisness(),
    Tabbar(),
    Webinars(),
    Offer(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? result = await _onBackPressed();
        if (result == null) {
          result = false;
        }
        return result;
      },
      child: Scaffold(
       // backgroundColor: kBackgroundColor,
        body: _pages.elementAt(_selectedIndex),

        bottomNavigationBar: BottomAppBar(

          color: Colors.white,
          child: Container(
            height: 55,
            //  color: Colors.white,
            child: SizedBox(
              height: 70,
              child: CupertinoTabBar(
                activeColor: Colors.black,
                currentIndex: _selectedIndex,
                backgroundColor: Colors.white,
inactiveColor: Colors.grey.withOpacity(.9),
                // selectedFontSize: 10,
                // selectedIconTheme: IconThemeData(
                //   color: kBlackColor,
                //   //size: 28,
                // ),
                iconSize: 40,
                // showSelectedLabels: true,
                // showUnselectedLabels: true,
                // type: BottomNavigationBarType.fixed,
                // selectedItemColor: kDarkGreyColor,
                // selectedLabelStyle: TextStyle(fontSize: 10, color: kBlackColor,),
                onTap: _onItemTapped,
                items: const [
                  BottomNavigationBarItem(

                    icon:  Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Icon(
                        Icons.home_filled,
                        size: 25,
                        //color: Color(0xFF3A5A98),
                      ),
                    ),
                    label:  'Home',
                  ),
                  BottomNavigationBarItem(

                    icon:  Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Icon(
                        Icons.search,
                        size: 25,
                        //color: Color(0xFF3A5A98),
                      ),
                    ),
                    label:  'Search',
                  ),

                  BottomNavigationBarItem(
                    icon:  Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: ImageIcon(

                        AssetImage("assets/images/buisness_icon.png"),
                       size: 25,
                       // color: Color(0xFF3A5A98),
                      ),
                    ),
                    label:'My Buisness',
                  ),

                  BottomNavigationBarItem(
                    icon:  Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: ImageIcon(
                        AssetImage("assets/images/webinar_icon.png"),
                        size: 25,
                        //color: Color(0xFF3A5A98),
                      ),
                    ),
                    label:'Events',
                  ),
                  BottomNavigationBarItem(
                    icon:  Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: ImageIcon(
                        AssetImage("assets/images/offer_icon.png"),
                       size: 25,
                       // color: Color(0xFF3A5A98),
                      ),
                    ),
                    label:'My Offer',
                  ),
                ],
              ),
            ),
          ),
          //   ],
          // ),
        ),
      ),
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
