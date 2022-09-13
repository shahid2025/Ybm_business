import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';
class Video_tutorial extends StatefulWidget {
  const Video_tutorial({Key? key}) : super(key: key);

  @override
  _Video_tutorialState createState() => _Video_tutorialState();
}

class _Video_tutorialState extends State<Video_tutorial> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),

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
        title: Text('Video Tutorials'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: size.height*.06,
                width: size.width*.85,
                child: Text("Tutorials",style: TextStyle(fontSize: 15,color: Colors.black,
                    fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
            Container(
              height: size.height*.8,
              width: size.width*.85,
            //  color: Colors.red,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,int index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height*.17,
                    width: size.width*.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width*.02,
                        ),
ClipRRect(
                    borderRadius: BorderRadius.circular(15),
  child:   Container(

      height: size.height*.13,

      width: size.width*.32,

      child: Image.asset('assets/images/computer.png',fit: BoxFit.cover,)),
),
SizedBox(
  width: size.width*.02,
),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  height: size.height*.04,
                                  width: size.width*.40,
                                  child: Text("How to add business",style: TextStyle(fontSize: 12,color: Colors.black,
                                      fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  height: size.height*.06,
                                  width: size.width*.40,
                                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting",
                                    style: TextStyle(fontSize: 10,color: Colors.black,
                                      fontWeight: FontWeight.w400),textAlign: TextAlign.start,)),

                              ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Watch Now',
                                textcolor: Colors.white, onTap: (){
                                  Navigator.pushNamed(context, RoutesName.submitted);
                                }, wholewidth: size.width*.40,),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
