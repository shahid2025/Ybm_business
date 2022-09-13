import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
class Webinar_2 extends StatefulWidget {
  const Webinar_2({Key? key}) : super(key: key);

  @override
  State<Webinar_2> createState() => _Webinar_2State();
}

class _Webinar_2State extends State<Webinar_2> {
  List<DateandTimeModel> Dataa = <DateandTimeModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Dataa.add(new DateandTimeModel(Icons.calendar_month, 'Date & Date','Sat,22 Oct 2022 09:00 - 12:00 BST'));
    Dataa.add(new DateandTimeModel(Icons.location_on_outlined, 'location','Business Design Center 22 Up Street , London'));
    Dataa.add(new DateandTimeModel(Icons.sticky_note_2_outlined, 'Refund Policies','No Refund'));

  }
  @override
  Widget build(BuildContext context) {
    final size   = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
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
                    //  scaffoldKey.currentState?.openDrawer();
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
                Container(
                    height: 25,
                    width: 25,
                    child: Image.asset('assets/images/notificationimage.png',color: Colors.black,)),
              ],),
          )



      ),
      body: Column(
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
            child:Text('Events',style: TextStyle(fontSize: 15,color: Colors.white),) ,
          ),
          SizedBox(
            height: size.height*.02,
          ),
          Container(
            width: size.width*.90,
              alignment:Alignment.centerLeft,
              child: Text('OCT 22',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.black))),
          SizedBox(
            height: size.height*.01,
          ),
          Container(
            width: size.width*.90,
              alignment:Alignment.centerLeft,
              child: Text('UK Black Business Show 2022',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black))),
          SizedBox(
            height: size.height*.03,
          ),
          Container(
            width: size.width*.90,
              alignment:Alignment.centerLeft,
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                  ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black))),
          SizedBox(
            height: size.height*.07,
          ),
          ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Tickects',
            textcolor: Colors.white, onTap: (){
              // Navigator.push(
              //   context,
              //   PageRouteBuilder(
              //     pageBuilder: (c, a1, a2) => Edit_profile1(),
              //     transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
              //     transitionDuration: Duration(milliseconds: 100),
              //   ),
              // );
            }, wholewidth: size.width*.90,),
          SizedBox(
            height: size.height*.05,
          ),
          Container(
            height: size.height*.38,
            width:  MediaQuery.of(context).orientation== Orientation.portrait?
            size.width * .90:
            size.width * .778,
            //  width: size.width * .85,
            child: ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemCount: Dataa.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * .09,
                      width: size.width * .90,
                      decoration: BoxDecoration(
                          //color: Color(0xffedf9fe),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [

                      Padding(
                        padding: const EdgeInsets.only(bottom: 45.0),
                        child: Icon(Dataa[index].iconbutton),
                      ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: size.width * .30,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                      width: size.width * .30,
                                      child: Text(Dataa[index].text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
                                  Container(
                                      width: size.width * .30,
                                      child: Text(Dataa[index].text2)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
class DateandTimeModel{
final IconData iconbutton;
final String text;
final String text2;
DateandTimeModel(this.iconbutton,this.text, this.text2);
}