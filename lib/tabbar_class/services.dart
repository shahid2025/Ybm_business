import 'package:flutter/material.dart';
import 'package:ybm_business/buisness_profile/buisness_profile_add-new_profile.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    //  alignment: Alignment.centerLeft,
                      width: size.width*.90,
                      height: size.height*.30,
                      child:ListView.builder(
                          itemCount: 2,

                          itemBuilder: (context,int index)
                          {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  width: size.width*.90,
                                  height: size.height*.13,
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius:BorderRadius.circular(12),
                                        child: Container(

                                          width: size.width*.25,
                                          height: size.height*.12,
                                          child: Image.asset('assets/images/car_images.jpg',fit: BoxFit.cover,),
                                        ),
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
                                                children: [
                                                  Container(
                                                    child: Text('The Car Ride',style:
                                                    TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height*.01,
                                            ),
                                            Container(
                                              width: size.width*.55,
                                              alignment: Alignment.centerLeft,
                                              child: Text('Medium',style:
                                              TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff707586)),),
                                            ),
                                            SizedBox(
                                              height: size.height*.01,
                                            ),
                                            Container(
                                              //   width: ,
                                              child: Text('It is a long established fact that a reader '
                                                  '   will be distracted by the readable content'
                                                  ' of a page when looking at its layout.',style:
                                              TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff0f1218)),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                      )
                  ),
                  SizedBox(
                    height: size.height*.03,
                  ),
                  ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Contact Business Now',
                    textcolor: Colors.white, onTap: (){
                      //  Navigator.pushNamed(context, RoutesName.EditProfile);
                    }, wholewidth: size.width*.85,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}