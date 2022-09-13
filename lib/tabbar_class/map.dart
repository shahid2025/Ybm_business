import 'package:flutter/material.dart';
import 'package:ybm_business/tabbar_class/screens/simple_map_screen.dart';
class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
            // Container(
            //       height: size.height*.35,
            //      // padding: EdgeInsets.symmetric(vertical: 10),
            // //  height: size.height*.40,
            //       alignment: Alignment.centerLeft,
            //       width: size.width*.90,
            //       child:SimpleMapScreen()
            //       //Image.asset('assets/images/map_image.png',fit: BoxFit.cover,),
            //     ),
          Stack(
            children:[
            Container(
              height: size.height*.35,
             // padding: EdgeInsets.symmetric(vertical: 10),
        //  height: size.height*.40,
              alignment: Alignment.centerLeft,
              width: size.width*.90,
              child:SimpleMapScreen()
              //Image.asset('assets/images/map_image.png',fit: BoxFit.cover,),
            ),

              Positioned(
                right: 20,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: size.height*.06,
                      width: size.width*.11,
                      decoration: BoxDecoration(
                          color: Colors.white,
                         borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    Container(
                        height: size.height*.03,
                        width: size.width*.06,
                        child: Image.asset('assets/images/filter.png'))
                  ],

                ),
              ),
        ]
          )
            ],
          ),
        ),
      ),
    );
  }
}