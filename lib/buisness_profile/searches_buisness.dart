import 'package:flutter/material.dart';
import 'package:ybm_business/buisness_profile/all.dart';
import 'package:ybm_business/my_widgets/myTextField_Widget.dart';
class searcches extends StatefulWidget {
  const searcches({Key? key}) : super(key: key);

  @override
  _searcchesState createState() => _searcchesState();
}

class _searcchesState extends State<searcches> {
  TextEditingController _searchBuisness=TextEditingController();


  var scaffoldKey = GlobalKey<ScaffoldState>();
  Color kGreyColor = Colors.grey.withOpacity(0.2);
  Color kSectionTileColor = Colors.grey.withOpacity(0.3);
  Color kTextLightColor = Colors.grey.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 4,
      child: new Scaffold(

        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(210),
          child: new Container(
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
              //borderRadius: BorderRadius.circular(2),
              border: Border(bottom: BorderSide(color: kSectionTileColor, width: 0)),
            ),
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  //  new Expanded(child: new Container()),



                  Container(
                    height: size.height*.21,
                    width: size.width,
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
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height*.018,
                        ),
                        Container(
                          width: size.width*.90,
                          height: size.height*.07,
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              IconButton(onPressed: () {
                                Navigator.pop(context);
                              }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
                              Padding(
                                padding: const EdgeInsets.only(left: 60.0),
                                child: Text('Search Business',style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height*.02,
                        ),
                        MyTextFieldWidget(hintText:'Search Busineess',check: true,IconLeft:Icons.search,
                          IconRight: Icon(Icons.location_on_outlined,size: 16,), textEditingController: _searchBuisness,),

                      ],
                    ),
                  ),




                  SizedBox(height:2),
                  Container(

                    height: 30,
                    // color: Color(0xff2b0346),
                    child: new TabBar(
                     indicatorSize: TabBarIndicatorSize.tab,
                 //     indicator: CircleTabIndicator(color: Colors.green, radius: 4),
                     unselectedLabelColor: Colors.black,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: new Text("All", style: TextStyle( fontSize: 12,
                              letterSpacing: .5,
                              color: Colors.white,fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: new Text("Categorry", style: TextStyle(fontSize: 12,
                              letterSpacing: .5,
                              color: Colors.white, fontWeight: FontWeight.w400),),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: new Text("category", style: TextStyle(fontSize: 12,
                              letterSpacing: .5,
                              color: Colors.white, fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: new Text("Category", style: TextStyle(fontSize: 12,
                              letterSpacing: .5,
                              color: Colors.white, fontWeight: FontWeight.w400),),
                        ),

                      ],
                      // labelColor: Colors.red,
                      indicatorColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            Alll_screen (),
            Alll_screen (),
            Alll_screen (),
            Alll_screen (),

            // Style(),
            // Search (),
          ],
        ),

      ),
    );
  }
}





