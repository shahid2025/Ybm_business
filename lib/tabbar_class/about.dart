import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool isReadmore= false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xff00ACEF),
          child: Icon(Icons.edit,),
          onPressed: () {},
          mini: true,

        ),
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              height: size.height*.28,
              child: Column(
                children: [
                  buildText("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          isReadmore = !isReadmore;
                        });
                      },
                      child: Text(isReadmore?'Read Less' : 'Read More',style: TextStyle(color: Color(0xff00ACEF)),)),


                ],
              ),
            ),

            SizedBox(
              height: size.height*.035,
            ),
            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Contact Business Now',
              textcolor: Colors.white, onTap: (){
                //  Navigator.pushNamed(context, RoutesName.EditProfile);
              }, wholewidth: size.width*.85,),
          ],
        ),
      ),
    );
  }
  Widget buildText(String text){
final size = MediaQuery.of(context).size;
    // if read more is false then show only 3 lines from text
    // else show full text
    final lines = isReadmore ? null : 3;
    return Container(
      width: size.width*.90,
      child: Text(
        text,
        style: TextStyle(fontSize: 14),
        maxLines: lines,
        // overflow properties is used to show 3 dot in text widget
        // so that user can understand there are few more line to read.
        overflow: isReadmore ? TextOverflow.visible: TextOverflow.ellipsis,
      ),
    );
  }

}
