import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
class Edit_buisness_proflie extends StatefulWidget {
  const Edit_buisness_proflie({Key? key}) : super(key: key);

  @override
  _Edit_buisness_proflieState createState() => _Edit_buisness_proflieState();
}

class _Edit_buisness_proflieState extends State<Edit_buisness_proflie> {
  List <String> text=['Electronics','Foods','Auto','foods'];
  List colors = [Colors.blue, Color(0xff41caff), Color(0xff41caff), Color(0xff41caff),];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff41CAFF),
                Color(0xff00ACEF
                ),

              ],
            ),
          ),
        ),
        centerTitle: true,
       leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
         Navigator.pop(context);
       },),
           title:Text('Edit Buisness Profile') ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*.03,
              ),
                  Container(
                height: size.height*.14,
                width: size.width*.90,
                decoration: BoxDecoration(
                    color: Color(0xff41caff),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   height: size.height*.05,
                    // ),
                    Container(
                        height:size.height*.04,
                        width: size.width*.16,
                        child: Image.asset('assets/images/upload_icons.png')),
                    Text('Upload company image',style:
                    TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              SizedBox(
                height: size.height*.05,
              ),
              Container(

                height: size.height*.06,
                width: size.width*.90,
                decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(

                  decoration:  InputDecoration(
                      prefixIcon:Icon(Icons.person,size: 16,),
                      border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(9),
                      // ) ,


                      hintText: 'Buisness Name',hintStyle: TextStyle(fontSize: 12)
                  ),
                ),
              ),
              SizedBox(
                height: size.height*.03,
              ),
              Container(

                height: size.height*.15,
                width: size.width*.90,
                decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(

                  decoration:  InputDecoration(
                      prefixIcon:Icon(Icons.description,size: 16,),
                      border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(9),
                      // ) ,


                      hintText: 'Buisness Description',hintStyle: TextStyle(fontSize: 12)
                  ),
                ),
              ),
              SizedBox(
                height: size.height*.03,
              ),
              Container(

                height: size.height*.06,
                width: size.width*.90,
                decoration: BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(

                  decoration:  InputDecoration(
                      prefixIcon:Icon(Icons.person,size: 16,),
                      border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(9),
                      // ) ,


                      hintText: 'Buisness Address',hintStyle: TextStyle(fontSize: 12)
                  ),
                ),
              ),
              SizedBox(
                height: size.height*.03,
              ),
              Container(
                  height: size.height*.25,
                  width: size.width*.90,
                  child: Image.asset('assets/images/map_image.png',fit: BoxFit.cover,)),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.90,
                  child: Text("Buisness Category",style: TextStyle(fontSize: 15,color: Colors.black,
                      fontWeight: FontWeight.w600),)),

              SizedBox(
                height: size.height*.01,
              ),

              Container(
                height: size.height*.065,
                width: size.width*.92,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: size.height*.06,
                          width: size.width*.23,
                          decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child: Text(text[index].toString(),style: TextStyle(color: Colors.white),),
                        ),
                      );}),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height*.05,
                  width: size.width*.90,
                  child: Text("Images",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w900),)),

              Container(
                height: size.height*.12,
                width: size.width*.90,
                // alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,int index){
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(

                        color: Color(0xff41caff),
                        strokeWidth: 1,
                        child: Container(
                            height: size.height*.09,
                            width: size.width*.20,
                            alignment: Alignment.center,
                            child: Icon(Icons.add,color: Color(0xff41caff),)),
                      ),
                    );
                  },

                ),
              ),



              SizedBox(
                height: size.height*.02,
              ),
              Container(
                height: MediaQuery.of(context).orientation==Orientation.portrait?
                size.height*.06:
                size.height*.08,
                width: MediaQuery.of(context).orientation==Orientation.portrait?
                size.width*.90:
                size.width*.40,
                // color: Colors.blue,
                //   alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                  // ],
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   stops: [0.0, 1.0],
                  //   colors: [
                  //     Color(0xfff7c155),
                  //     Color(0xfffda33a),
                  //   ],
                  // ),
                  color: Color(0xff41caff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      //  minimumSize: MaterialStateProperty.all(Size(width, 50)),
                      backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                      // elevation: MaterialStateProperty.all(3),
                      shadowColor:
                      MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder: (c, a1, a2) => AppBottomNavigationBar(),
                      //     transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                      //     transitionDuration: Duration(milliseconds: 100),
                      //   ),
                      // );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Update changes'
                          ,textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 15
                          ),
                        ),
                        //   Icon(Icons.arrow_forward)
                      ],
                    )

                ),),

            ],
          ),
        ),
      ),
    );
  }
}
