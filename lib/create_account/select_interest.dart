import 'dart:ui';

import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:ybm_business/create_account/Filter_Screen.dart';
import 'package:ybm_business/create_account/sign_up.dart';
import 'package:ybm_business/routes/routes_name.dart';


class Select_interst extends StatefulWidget {
  const Select_interst({Key? key}) : super(key: key);

  @override
  _Select_interstState createState() => _Select_interstState();
}

class _Select_interstState extends State<Select_interst> {

  List<User> selectedUserList = [];
List<String> text = ['Electronic','Shopping','Bar','Cars','Travel','Coffee','Music','Footall','Cricket','Bikes','Books','Animals'];
 List<Color>  color = [Color(0xff41CAFF),Color(0xff41CAFF),Colors.white,Colors.white,Colors.white,Colors.white
   ,Colors.white,Color(0xff41CAFF),Colors.white,Colors.white,Colors.white,Colors.white];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
     backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.055,
              ),
              Container(
                height: size.height*.1,
                width: size.width*.35,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/YBM_LOGO.png",
                ),
              ),
              SizedBox(
                height: size.height*.02,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.075,
                  width: size.width*.85,
                  child: Text("Select topic of interest",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                      fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
              SizedBox(
                height: size.height*.02,
              ),
              // Container(
              //
              //   height: size.height*.06,
              //   width: size.width*.85,
              //   decoration: BoxDecoration(
              //       color: Color(0xfff0f0f0),
              //       borderRadius: BorderRadius.circular(12)
              //   ),
              //   child: TextField(
              //
              //     decoration:  InputDecoration(
              //         prefixIcon:Icon(Icons.search,color: Color(0xff7A7A7A),size: 15,),
              //         border: InputBorder.none,
              //         // border: OutlineInputBorder(
              //         //   borderRadius: BorderRadius.circular(9),
              //         // ) ,
              //
              //
              //         hintText: 'Search',hintStyle: TextStyle(color: Color(0xff7A7A7A,),fontSize: 12)
              //     ),
              //   ),
              // ),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   width: size.width*.90,
              //   height: size.height*.40,
              //   child: GridView.builder(
              //     //shrinkWrap: true,
              //     itemCount: 12,
              //     //  itemCount: images.length,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount:   3,
              //         //mainAxisSpacing: 1
              //         mainAxisExtent: 45
              //       // (orientation == Orientation.portrait) ? 2 : 3
              //     ),
              //     itemBuilder: (BuildContext context, int index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //              color: color[index],
              //             border: Border.all(color: index <= 1 ? Colors.transparent: index==7? Colors.transparent: Colors.black),
              //             borderRadius: BorderRadius.circular(30)
              //           ),
              //           alignment: Alignment.center,
              //           child: Text(text[index],style: TextStyle(color: index <= 1 ? Colors.white: index==7? Colors.white: Colors.black),),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // Container(
              //   height: MediaQuery.of(context).orientation==Orientation.portrait?
              //   size.height*.06:
              //   size.height*.08,
              //   width: MediaQuery.of(context).orientation==Orientation.portrait?
              //   size.width*.80:
              //   size.width*.40,
              //   // color: Colors.blue,
              //   //   alignment: Alignment.centerRight,
              //   decoration: BoxDecoration(
              //     // boxShadow: [
              //     //   BoxShadow(
              //     //       color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
              //     // ],
              //     gradient: LinearGradient(
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //       stops: [0.0, 1.0],
              //       colors: [
              //         Color(0xff41CAFF),
              //         Color(0xff00ACEF),
              //       ],
              //     ),
              //     // color: Colors.blue,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: ElevatedButton(
              //       style: ButtonStyle(
              //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //           RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(50.0),
              //           ),
              //         ),
              //         //  minimumSize: MaterialStateProperty.all(Size(width, 50)),
              //         backgroundColor:
              //         MaterialStateProperty.all(Colors.transparent),
              //         // elevation: MaterialStateProperty.all(3),
              //         shadowColor:
              //         MaterialStateProperty.all(Colors.transparent),
              //       ),
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           PageRouteBuilder(
              //             pageBuilder: (c, a1, a2) => Filter_Screen(),
              //             transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
              //             transitionDuration: Duration(milliseconds: 100),
              //           ),
              //         );
              //       },
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text('Confirm'
              //             ,textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 letterSpacing: 1,
              //                 fontSize: 15
              //             ),
              //           ),
              //           //   Icon(Icons.arrow_forward)
              //         ],
              //       )
              //
              //   ),),



              FilterPage(allTextList: selectedUserList, selectedUserList: selectedUserList)




            ],
          ),
        ),
      ),
    );
  }

}

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key, required this.allTextList, required this.selectedUserList, })
      : super(key: key);
  final List<User> allTextList;
  final List<User> selectedUserList;
  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height*.60,
      width: size.width*.90,
      child:
      FilterListWidget<User>(


        themeData: FilterListThemeData(context),

        hideSelectedTextCount: true,
        listData: userList,
        hideSearchField: false ,


      //   controlButtons: [ContolButtonType.All, ContolButtonType.Reset],
        selectedListData: selectedUserList,
        onApplyButtonClick: (list) {
          Navigator.pushNamed(context, RoutesName.filterscreen);
        },
        choiceChipLabel: (item) {
          /// Used to print text on chip
          return item!.name;
        },
        // choiceChipBuilder: (context, item, isSelected) {
        //   return Container(
        //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        //     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //     decoration: BoxDecoration(
        //         border: Border.all(
        //       color: isSelected! ? Colors.blue[300]! : Colors.grey[300]!,
        //     )),
        //     child: Text(item.name),
        //   );
        // },
        validateSelectedItem: (list, val) {
          ///  identify if item is selected or not
          return list!.contains(val);
        },
        onItemSearch: (user, query) {

          /// When search query change in search bar then this method will be called
          ///
          /// Check if items contains query
          return user.name!.toLowerCase().contains(query.toLowerCase());
        },
      ),

    );
  }
}

class User {
  final String? name;
  final String? avatar;
  User({this.name, this.avatar});
}
List<User> userList = [
  User(name: "Abigail", avatar: "user.png"),
  User(name: "Audrey", avatar: "user.png"),
  User(name: "Ava", avatar: "user.png"),
  User(name: "Bella", avatar: "user.png"),
  User(name: "Bernadette", avatar: "user.png"),
  User(name: "Carol", avatar: "user.png"),
  User(name: "Claire", avatar: "user.png"),
  User(name: "Deirdre", avatar: "user.png"),
  User(name: "Donna", avatar: "user.png"),
  User(name: "Dorothy", avatar: "user.png"),
  User(name: "Faith", avatar: "user.png"),
  User(name: "Gabrielle", avatar: "user.png"),
  User(name: "Grace", avatar: "user.png"),
  User(name: "Hannah", avatar: "user.png"),
  User(name: "Heather", avatar: "user.png"),

];

