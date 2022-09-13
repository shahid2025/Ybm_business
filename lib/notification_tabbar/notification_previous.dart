import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class Notification_previous extends StatefulWidget {
  const Notification_previous({Key? key}) : super(key: key);

  @override
  _Notification_previousState createState() => _Notification_previousState();
}

class _Notification_previousState extends State<Notification_previous> {


  ValueNotifier<bool> _isSwitched = ValueNotifier(false);
  ValueNotifier<bool> _isSwitched1 = ValueNotifier(false);
  ValueNotifier<bool> _isSwitched2 = ValueNotifier(false);
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
                    child: GestureDetector(
                      onTap: (){
                        var ret = showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
                              content:
                              Container(

                                height: MediaQuery.of(context).size.height / 3,
                                child:Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Push notifications '),
                                          Center(
                                            child: ValueListenableBuilder<bool>(
                                                valueListenable: _isSwitched,
                                                builder: (context, currentState, child) {
                                                  return Switch(
                                                    value: currentState,
                                                    onChanged: (value) {
                                                      _isSwitched.value = value;
                                                    },
                                                    activeTrackColor: Color(0xff00ACEF),
                                                    activeColor: Colors.white,
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Event notifications'),
                                          Center(
                                            child: ValueListenableBuilder<bool>(
                                                valueListenable: _isSwitched1,
                                                builder: (context, currentState, child) {
                                                  return Switch(
                                                    value: currentState,
                                                    onChanged: (value) {
                                                      _isSwitched1.value = value;
                                                    },
                                                    activeTrackColor: Color(0xff00ACEF),
                                                    activeColor: Colors.white,
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Chat notifications'),
                                          Center(
                                            child: ValueListenableBuilder<bool>(
                                                valueListenable: _isSwitched2,
                                                builder: (context, currentState, child) {
                                                  return Switch(
                                                    value: currentState,
                                                    onChanged: (value) {
                                                      _isSwitched2.value = value;
                                                    },
                                                    activeTrackColor: Color(0xff00ACEF),
                                                    activeColor: Colors.white,
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                              ),


                            );
                          },
                        );
                      },
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
                      ),
                    )




                  );}),
          ),
        ],
      ),
    );
  }


}
