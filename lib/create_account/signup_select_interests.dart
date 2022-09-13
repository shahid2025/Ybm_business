
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';




class Signup_select_interest extends StatefulWidget {
  Signup_select_interest({Key? key,}) : super(key: key);



  @override
  _Signup_select_interestState createState() => _Signup_select_interestState();
}

class _Signup_select_interestState extends State<Signup_select_interest> {




  bool selected = false;


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
    "Electronic",
    "Shopping",
    "Bar",
    "Electronic",
    "Shopping",
    "Bar",
    "Electronic",
    "Shopping",
    "Bar",
  ];

  List<String> selectedReportList = [];



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(
                height: size.height*.07,
              ),

              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.075,
                  width: size.width*.85,
                  child: Text("Select interests",style: TextStyle(fontSize: 25,color: Colors.black,
                      fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.85,
                  child: Text("Choose your likes",style: TextStyle(fontSize: 15,color: Colors.black,
                      fontWeight: FontWeight.w300),textAlign: TextAlign.center,)),

              MultiSelectChip(


                reportList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedReportList = selectedList;
                  });
                },
                maxSelection: 20,
              ),




              SizedBox(
                height: size.height*.1,
              ),
              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Confirm',
                textcolor: Colors.white, onTap: (){
openAlertBox();
                }, wholewidth: size.width*.85,),

            ],
          ),
        ),
      ),
    );
  }
  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          final size  = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

Column(
  children: [
Container(
    height: 50,
    child: Image.asset('assets/images/correct.png')),
    SizedBox(
      height: size.height*.04,
    ),
    Container(
        alignment: Alignment.center,
        height: size.height*.03,
        width: size.width*.75,
        child: Text("Account Created Successfully",style: TextStyle(fontSize: 15,color: Colors.black,
            fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
    Container(
        alignment: Alignment.center,
        height: size.height*.04,
        width: size.width*.45,
        child: Text("Now you can access million of stores and products across the globe",style:
        TextStyle(fontSize: 10,color: Colors.black,
            fontWeight: FontWeight.w300),textAlign: TextAlign.center,)),
    SizedBox(
      height: size.height*.04,
    ),
    ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Explore Now',
      textcolor: Colors.white, onTap: (){

      }, wholewidth: size.width*.35,),
    SizedBox(
      height: size.height*.04,
    ),
  ],
)
                ],
              ),
            ),
          );
        });
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
        width: 85,
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          selectedColor: Color(0xff41CAFF),
          backgroundColor: Colors.white,
          label: Text(item,
              style: TextStyle(
                  color: selectedChoices.contains(item)
                      ? Colors.white
                      : Color(0xff65656B),
                  fontSize: 12)),
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
