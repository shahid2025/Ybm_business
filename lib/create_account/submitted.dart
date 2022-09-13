import 'package:flutter/material.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';
class Submitted extends StatefulWidget {
  const Submitted({Key? key}) : super(key: key);

  @override
  _SubmittedState createState() => _SubmittedState();
}

class _SubmittedState extends State<Submitted> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*.04,
            ),
            Container(
              height: size.height*.1,
              width: size.width*.35,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/YBM_LOGO.png",
              ),
            ),
            SizedBox(
              height: size.height*.2,
            ),
            Container(

                alignment: Alignment.center,
                height: size.height*.05,
                width: size.width*.85,
                child: Text("Submitted!",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                    fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
            Container(

                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10),
                // height: size.height*.07,
                width: size.width*.75,
                child: Text("Your ticket is being investigated and you will be contacted by email in the next 48 hours",
                  style: TextStyle(fontSize: 15,color: Colors.black,
                    fontWeight: FontWeight.w400),textAlign: TextAlign.center,maxLines: 3,)),
            SizedBox(
              height: size.height*.3,
            ),

            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Next',
              textcolor: Colors.white, onTap: (){
                Navigator.pushNamed(context, RoutesName.appBottomnavigatiobar);
              }, wholewidth: size.width*.85,),

          ],
        ),
      ),
    );
  }
}
