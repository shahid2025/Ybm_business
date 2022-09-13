import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*.055,
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
                height: size.height*.075,
                width: size.width*.85,
                child: Text("Welcome to YBMAPP",style: TextStyle(fontSize: 25,color: Color(0xff41CAFF),
                    fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
            SizedBox(
              height: size.height*.01,
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 05),
                // height: size.height*.1,
                width: size.width*.80,
                child: Text("Congratulations on your commitment to the movement to promote black "
                    "excellence and truly recycle the black pound in the UKa",
                  style: TextStyle(fontSize: 14,color: Colors.black,
                      fontWeight: FontWeight.w500),textAlign: TextAlign.center,)),
            SizedBox(
              height: size.height*.25,
            ),

            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Continue',
              textcolor: Colors.white, onTap: (){
                Navigator.pushNamed(context, RoutesName.SelectInterest);
              }, wholewidth: size.width*.85,),
          ],
        ),
      ),
    );
  }
}
