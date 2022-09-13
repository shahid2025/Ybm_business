// import 'package:filter_list/filter_list.dart';
// import 'package:flutter/material.dart';
// class Filter_Screen extends StatefulWidget {
//   const Filter_Screen({Key? key}) : super(key: key);
//
//   @override
//   _Filter_ScreenState createState() => _Filter_ScreenState();
// }
//
// class _Filter_ScreenState extends State<Filter_Screen> {
//   List<User> selectedUserList = [];
//   List<String> text = ['Electronic','Shopping','Bar','Cars','Travel','Coffee','Music','Footall','Cricket','Bikes','Books','Animals'];
//   List<Color>  color = [Color(0xff41CAFF),Color(0xff41CAFF),Colors.white,Colors.white,Colors.white,Colors.white
//     ,Colors.white,Color(0xff41CAFF),Colors.white,Colors.white,Colors.white,Colors.white];
//
//   // List <listModel> another =<listModel>[];
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   another.add(listModel(Icons.star, 'All'));
//   //   another.add(listModel(Icons.star, '2.0'));
//   //   another.add(listModel(Icons.star, '3.0'));
//   //   another.add(listModel(Icons.star, '4.0'));
//   //   another.add(listModel(Icons.star, '5.0'));
//   //   selectedValue = '';
//   // }
//   bool isClicked = false;
//   String selectedValue = '';
//   @override
//
//
//   Widget build(BuildContext context) {
//     final size=MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor: Color(0xff41CAFF).withOpacity(.85),
//         centerTitle: true,
//         leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {  Navigator.pop(context);},),
//         title: Text('Filter'),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               // SizedBox(
//               //   height: size.height*.02,
//               // ),
//               // Container(
//               //     alignment: Alignment.centerLeft,
//               //     height: size.height*.075,
//               //     width: size.width*.85,
//               //     child: Text("Business Type",style: TextStyle(fontSize: 20,color: Color(0xff41CAFF),
//               //         fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
//               //
//               // Container(
//               //   alignment: Alignment.centerLeft,
//               //   width: size.width*.90,
//               //   height: size.height*.25,
//               //   child: GridView.builder(
//               //     //shrinkWrap: true,
//               //     itemCount: 12,
//               //     //  itemCount: images.length,
//               //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               //         crossAxisCount:   3,
//               //         //mainAxisSpacing: 1
//               //         mainAxisExtent: 45
//               //       // (orientation == Orientation.portrait) ? 2 : 3
//               //     ),
//               //     itemBuilder: (BuildContext context, int index) {
//               //       return Padding(
//               //         padding: const EdgeInsets.all(8.0),
//               //         child: Container(
//               //           decoration: BoxDecoration(
//               //               color: color[index],
//               //               border: Border.all(color: index <= 1 ? Colors.transparent: index==7? Colors.transparent: Colors.black),
//               //               borderRadius: BorderRadius.circular(30)
//               //           ),
//               //           alignment: Alignment.center,
//               //           child: Text(text[index],style: TextStyle(color: index <= 1 ? Colors.white: index==7? Colors.white: Colors.black),),
//               //         ),
//               //       );
//               //     },
//               //   ),
//               // ),
//               Container(
//                   alignment: Alignment.centerLeft,
//                   height: size.height*.075,
//                   width: size.width*.85,
//                   child: Text("Ratings",style: TextStyle(fontSize: 20,color: Color(0xff41CAFF),
//                       fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
//               // Container(
//               //   alignment: Alignment.centerLeft,
//               //   width: size.width*.90,
//               //   height: size.height*.25,
//               //   child: GridView.builder(
//               //     //shrinkWrap: true,
//               //     itemCount: 5,
//               //     //  itemCount: images.length,
//               //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               //         crossAxisCount:   3,
//               //         //mainAxisSpacing: 1
//               //         mainAxisExtent: 45
//               //       // (orientation == Orientation.portrait) ? 2 : 3
//               //     ),
//               //     itemBuilder: (BuildContext context, int index) {
//               //       return Padding(
//               //         padding: const EdgeInsets.all(8.0),
//               //         child: GestureDetector(
//               //           onTap: (){
//               //             setState(() {
//               //               isClicked = true;
//               //               selectedValue = '';
//               //             });
//               //           },
//               //           child: Container(
//               //             decoration: BoxDecoration(
//               //                 color: isClicked?Colors.blue
//               //                 // Color(0xFFFFEBE7)
//               //                     : Colors.red,
//               //                // color:index== 2? Color(0xff41CAFF): Colors.white,
//               //                 border: Border.all(color: index== 2? Colors.transparent: Colors.black,),
//               //                 borderRadius: BorderRadius.circular(30)
//               //             ),
//               //             alignment: Alignment.center,
//               //             child: Row(
//               //               mainAxisAlignment: MainAxisAlignment.center,
//               //               children: [
//               //                 Icon(another[index].icon,size: 16,color: index== 0? Colors.transparent: Colors.amber,),
//               //                 Text(another[index].text,style: TextStyle(color:index== 2? Colors.white: Colors.black,),),
//               //               ],
//               //             ),
//               //           ),
//               //         ),
//               //       );
//               //     },
//               //   ),
//               // ),
//               //
//               //
//
//
//
//
//
//
//
//
//
// FilterPage(allTextList: selectedUserList, selectedUserList: selectedUserList),
//
//
//
//         Container(
//           child:Center(
//         child: Column(
//         children: [
//         ActionChip(
//             avatar: Icon(Icons.favorite),
//         label: Text('Action 1'),
//         onPressed: () {},
//       ),
//       ActionChip(
//         avatar: Icon(Icons.delete),
//         label: Text('Action 2'),
//         onPressed: () {},
//       ),
//       ActionChip(
//
//         avatar: Icon(Icons.alarm),
//         label: Text('Action 3'),
//         onPressed: ()  {},
//       ),
//       ActionChip(
//         avatar: Icon(Icons.location_on),
//         label: Text('Action 4'),
//         onPressed: () {},
//       ),
//       ],
//     ),
//     ),
//     ),
//
//
//
//
//
//               // Container(
//               //     alignment: Alignment.centerLeft,
//               //     height: size.height*.075,
//               //     width: size.width*.85,
//               //     child: Text("Distance",style: TextStyle(fontSize: 20,color: Color(0xff41CAFF),
//               //         fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// // class listModel {
// //   final IconData icon;
// //   final String text;
// //
// //   listModel (this.icon,this.text,  );
// // }
//
//
//
// class FilterPage extends StatelessWidget {
//   const FilterPage({Key? key, required this.allTextList, required this.selectedUserList, })
//       : super(key: key);
//   final List<User> allTextList;
//   final List<User> selectedUserList;
//   @override
//   Widget build(BuildContext context) {
// final size  = MediaQuery.of(context).size;
//     return Container(
//       height: size.height*.4,
//         width: size.width*.90,
//         child:
//         FilterListWidget<User>(
//           themeData: FilterListThemeData(context),
//           hideSelectedTextCount: true,
//           listData: userList,
//           hideSearchField: true ,
//
//         //  controlButtons: [ContolButtonType.All, ContolButtonType.Reset],
//           selectedListData: selectedUserList,
//           onApplyButtonClick: (list) {
//             Navigator.pop(context, list);
//           },
//           choiceChipLabel: (item) {
//             /// Used to print text on chip
//              return item!.name;
//           },
//           // choiceChipBuilder: (context, item, isSelected) {
//           //   return Container(
//           //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           //     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           //     decoration: BoxDecoration(
//           //         border: Border.all(
//           //       color: isSelected! ? Colors.blue[300]! : Colors.grey[300]!,
//           //     )),
//           //     child: Text(item.name),
//           //   );
//           // },
//           validateSelectedItem: (list, val) {
//             ///  identify if item is selected or not
//             return list!.contains(val);
//           },
//           onItemSearch: (user, query) {
//             /// When search query change in search bar then this method will be called
//             ///
//             /// Check if items contains query
//             return user.name!.toLowerCase().contains(query.toLowerCase());
//           },
//         ),
//
//      );
//   }
// }
//
// class User {
//   final String? name;
//   final String? avatar;
//   final IconData icon;
//   User(this.icon, {this.name, this.avatar});
// }
// List<User> userList = [
//   User(name: "Abigail", avatar: "user.png",Icons.star),
//   // User(name: "Audrey", avatar: "user.png"),
//   // User(name: "Ava", avatar: "user.png"),
//   // User(name: "Bella", avatar: "user.png"),
//   // User(name: "Bernadette", avatar: "user.png"),
//   // User(name: "Carol", avatar: "user.png"),
//   // User(name: "Claire", avatar: "user.png"),
//   // User(name: "Deirdre", avatar: "user.png"),
//   // User(name: "Donna", avatar: "user.png"),
//   // User(name: "Dorothy", avatar: "user.png"),
//   // User(name: "Faith", avatar: "user.png"),
//   // User(name: "Gabrielle", avatar: "user.png"),
//   // User(name: "Grace", avatar: "user.png"),
//   // User(name: "Hannah", avatar: "user.png"),
//   // User(name: "Heather", avatar: "user.png"),
//
// ]
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/create_account/select_interest.dart';
import 'package:ybm_business/create_account/video_tutorial.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';



class Filter_Screen extends StatefulWidget {
  Filter_Screen({Key? key,}) : super(key: key);



  @override
  _Filter_ScreenState createState() => _Filter_ScreenState();
}

class _Filter_ScreenState extends State<Filter_Screen> {
  bool selected = false;
  List<Tech> _chipsList = [
    Tech("All", Colors.white, false),
    Tech("2.0", Colors.white, false),
    Tech("3.0", Colors.white, false),
    Tech("4.0", Colors.white, false),
    Tech("5.0", Colors.white, false)
  ];

  List<String> reportList = [
    "Electronic",
    "Shopping",
    "Bar",
    "Cars",
    "Travel",
    "Coffee",
    "Music",
    "Footall",
    "Cricket",
    "Bikes",
    "Books",
    "Animals",
  ];

  List<String> selectedReportList = [];

  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          return AlertDialog(
            title: Text("Report Video"),
            content: MultiSelectChip(
              reportList,
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedReportList = selectedList;
                });
              },
              maxSelection: 2,
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text("Report"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

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
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {  Navigator.pop(context);},),
        title: Text('Filter'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.075,
                  width: size.width*.85,
                  child: Text("Business Type",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                      fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
              // SizedBox(
              //   height: size.height*.02,
              // ),
              // ElevatedButton(
              //   child: Text("Report"),
              //   onPressed: () => _showReportDialog(),
              // ),
            //  Text(selectedReportList.join(" , ")),
              MultiSelectChip(


                reportList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedReportList = selectedList;
                  });
                },
                maxSelection: 10,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.075,
                  width: size.width*.85,
                  child: Text("Ratings",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                      fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),

              Container(
                width: size.width*.85,
                child: Wrap(
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: techChips(),
                ),
              ),
              Container(

                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Distance",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                      fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
              SizedBox(
                height: size.height*.02,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(

                                 width: MediaQuery.of(context).size.width - 50,
                                 animation: true,
                                 lineHeight: 12.0,
                                 animationDuration: 2000,
                                 percent: 0.25,
                                 widgetIndicator: Icon(Icons.location_on_outlined,color: Color(0xff00ACEF),),
                                 center: Text("30.0%",style: TextStyle(fontSize: 12),),
                                 linearStrokeCap: LinearStrokeCap.round,
                                 progressColor: Color(0xff00ACEF),
                               ),
              ),
              SizedBox(
                height: size.height*.1,
              ),
              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Continue',
                textcolor: Colors.white, onTap: (){
                  Navigator.pushNamed(context, RoutesName.video_tutorial);
                }, wholewidth: size.width*.85,),

            ],
          ),
        ),
      ),
    );
  }
  List<Widget> techChips () {
    List<Widget> chips = [];
    for (int i=0; i< _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left:10, right: 5),
        child: FilterChip(
          avatarBorder :  CircleBorder(side:BorderSide.none,),
          avatar: Icon(Icons.star,color: Colors.amber,size: 14),
          label: Text(_chipsList[i].label),
          labelStyle: TextStyle(color: ( _chipsList[i].isSelected == selected)?Colors.black:Colors.white),
          backgroundColor: _chipsList[i].color,
          selected: _chipsList[i].isSelected,
        checkmarkColor: Colors.transparent,
          selectedColor: Color(0xff00ACEF),
          onSelected: (bool value)
          {
            setState(() {
              _chipsList[i].isSelected = value;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  MultiSelectChip(this.reportList, {this.onSelectionChanged, this.onMaxSelected, this.maxSelection});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  //final size =MediaQuery.of(context).size;

  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      choices.add(Container(
      //  color: Colors.red,
      //   height: 200,
        width: 80,
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          selectedColor: Color(0xff41CAFF),
          backgroundColor: Colors.white,


          label: Text(item, style: TextStyle(color: Colors.black)),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            if(selectedChoices.length == (widget.maxSelection  ?? -1) && !selectedChoices.contains(item)) {
              widget.onMaxSelected?.call(selectedChoices);
            } else {
              setState(() {
                selectedChoices.contains(item)
                    ? selectedChoices.remove(item)
                    : selectedChoices.add(item);
                widget.onSelectionChanged?.call(selectedChoices);
              });
            }
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }

}
class Tech
{
  String label;
  Color color;
  bool isSelected;
  Tech(this.label, this.color, this.isSelected);
}