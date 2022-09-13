import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/packages/package_2.dart';
class Packages_1 extends StatefulWidget {
  const Packages_1({Key? key}) : super(key: key);

  @override
  _Packages_1State createState() => _Packages_1State();
}

class _Packages_1State extends State<Packages_1> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.06,
              ),
              Container(
                  alignment: Alignment.center,
                  height: size.height*.05,
                  width: size.width*.90,
                  child: Text("Choose the best plan for your Business",style: TextStyle(fontSize: 15,
                      color: Color(0xff41caff),fontWeight: FontWeight.w900),)),
              SizedBox(
                height: size.height*.02,
              ),
              Container(
                height: size.height*.3,
                width: size.width*.90,
                decoration: BoxDecoration(
                  border: Border.all( color: Color(0xff00ACEF),),

                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.06,
                        width: size.width*.75,
                        child: Text("Free Version",style: TextStyle(fontSize: 15,color: Colors.black,
                            fontWeight: FontWeight.w900),)),

                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Text("\$ 0.00",style: TextStyle(fontSize: 15,color: Colors.black,
                                fontWeight: FontWeight.w900),),
                            Text("/ month",style: TextStyle(fontSize: 12,color: Colors.black,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.02,
                    ),
                    Container(
                      height: size.height*.001,
                      width: size.width*.75,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: size.height*.02,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.black,),
                            Text("Minimal data",style: TextStyle(fontSize: 12,color: Colors.black,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.black,),
                            Text("Minimal media…",style: TextStyle(fontSize: 12,color: Colors.black,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),

                    SizedBox(
                      height: size.height*.04,
                    ),

                    ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Choose Free Version',
                      textcolor: Colors.white, onTap: (){
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => Package_2(),
                            transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                            transitionDuration: Duration(milliseconds: 100),
                          ),
                        );
                      }, wholewidth: size.width*.75,),
                  ],
                ),
              ),
              SizedBox(
                height: size.height*.03,
              ),
              Container(
                height: size.height*.45,
                width: size.width*.90,
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Color(0xff00acef)
                  // ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        Color(0xff41CAFF),
                        Color(0xff00ACEF),
                      ],
                    ),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.06,
                        width: size.width*.75,
                        child: Text("Startup Package(Recomended)",style: TextStyle(fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),)),

                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Text("\$ 25.99",style: TextStyle(fontSize: 15,color: Colors.white,
                                fontWeight: FontWeight.w900),),
                            Text("/ month",style: TextStyle(fontSize: 12,color: Colors.white,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.02,
                    ),
                    Container(
                      height: size.height*.0001,
                      width: size.width*.75,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: size.height*.02,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.white,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Colors.white,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color:  Colors.white,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Colors.white,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color:  Colors.white,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Colors.white,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.white,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Colors.white,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color:  Colors.white,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Colors.white,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color:  Colors.white,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Colors.white,
                                fontWeight: FontWeight.w500),),
                          ],
                        )),

                    SizedBox(
                      height: size.height*.05,
                    ),

                    ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Choose Startup package',
                      textcolor: Colors.white, onTap: (){

                      }, wholewidth: size.width*.85,),
                  ],
                ),
              ),
              SizedBox(
                height: size.height*.03,
              ),
              Container(
                height: size.height*.58,
                width: size.width*.90,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff00acef)
                    ),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.06,
                        width: size.width*.75,
                        child: Text("Premium Package",style: TextStyle(fontSize: 15,color: Colors.black,
                            fontWeight: FontWeight.w900),)),

                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Text("\$ 85.99",style: TextStyle(fontSize: 15,color: Color(0xff41caff),
                                fontWeight: FontWeight.w900),),
                            Text("/ month",style: TextStyle(fontSize: 12,color: Color(0xff7a7a7a),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.02,
                    ),
                    Container(
                      height: size.height*.0001,
                      width: size.width*.75,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: size.height*.02,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),
                    SizedBox(
                      height: size.height*.008,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: size.height*.025,
                        width: size.width*.75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 12,color: Colors.blue,),
                            Text("  Amet minim mollit non deserunt ullamco.",style: TextStyle(fontSize: 12,color:
                            Color(0xff0f1218),
                                fontWeight: FontWeight.w500),),
                          ],
                        )),

                    SizedBox(
                      height: size.height*.05,
                    ),
                    ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Choose premium package',
                      textcolor: Colors.white, onTap: (){
                      }, wholewidth: size.width*.85,),
                  ],
                ),
              ),
              SizedBox(
                height: size.height*.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
