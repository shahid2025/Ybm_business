import 'package:flutter/material.dart';
class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  _Notification1State createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: size.height*.016,
          ),

          Container(
            height: size.height*.75,
            width: size.width*.90,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (BuildContext context,int index){
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height*.1,
                            width: size.width*.89,
                            child: Row(
                              children: [
                                Container(
                                  width: size.width*.23,
                                  child: CircleAvatar(
                                    radius:27,
                                    backgroundImage: AssetImage('assets/images/bell.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width*.012,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: size.width*.6,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*.02,
                                      ),
                                      Container(
                                          alignment:Alignment.centerLeft,
                                          child: Text('Notification Title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black))),
                                      Container(
                                        width: size.width*.6,
                                        child: Text('Lorem ipsum may be used as a placeholder before final copy is available.',
                                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.w100,color: Colors.black)),
                                      ),


                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: size.height*.001,
                            width: size.width*.85,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    )



                    // Container(
                    //   alignment: Alignment.center,
                    //   height: size.height*.06,
                    //   width: size.width*.23,
                    //   decoration: BoxDecoration(
                    //       color: colors[index],
                    //       borderRadius: BorderRadius.circular(18)
                    //   ),
                    //   child: Text(text[index].toString(),style: TextStyle(color: Colors.white),),
                    // ),
                  );}),
          ),
        ],
      ),
    );
  }
}
