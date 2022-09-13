import 'package:flutter/material.dart';
import 'package:ybm_business/my_widgets/button%20widget.dart';
import 'package:ybm_business/routes/routes_name.dart';

import '../create_account/welcome_screen.dart';
class Terms_Conditions extends StatefulWidget {
  const Terms_Conditions({Key? key}) : super(key: key);

  @override
  _Terms_ConditionsState createState() => _Terms_ConditionsState();
}

class _Terms_ConditionsState extends State<Terms_Conditions> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
        title: Text('Terms & Conditions'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*.016,
            ),
            Container(
              height: size.height*.05,
              width: size.width*.90,
              alignment: Alignment.center,
              child: Text('Terms & Conditions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                  color: Color(0xff41caff)))
              ,
            ),
            SizedBox(
              height: size.height*.028,
            ),
            Container(
              height: size.height*.05,
              width: size.width*.80,
              alignment: Alignment.centerLeft,
              child: Text('Privacy Policy',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black))
              ,
            ),
            Container(
              height: size.height*.15,
              width: size.width*.80,
              alignment: Alignment.center,
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer'
                  '  took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, '
                  '     but also the leap into electronic typesetting, remaining essentially unchanged.',textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)))
              ,
            ),
            SizedBox(
              height: size.height*.018,
            ),
            Container(
              height: size.height*.05,
              width: size.width*.80,
              alignment: Alignment.centerLeft,
              child: Text('Privacy Policy',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black))
              ,
            ),
            Container(
              height: size.height*.15,
              width: size.width*.80,
              alignment: Alignment.center,
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer'
                  '  took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, '
                  '     but also the leap into electronic typesetting, remaining essentially unchanged.',textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)))
              ,
            ),
            SizedBox(
              height: size.height*.018,
            ),
            Container(
              height: size.height*.05,
              width: size.width*.80,
              alignment: Alignment.centerLeft,
              child: Text('Privacy Policy',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black))
              ,
            ),
            Container(
              height: size.height*.15,
              width: size.width*.80,
              alignment: Alignment.center,
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer'
                  '  took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, '
                  '     but also the leap into electronic typesetting, remaining essentially unchanged.',textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)))
              ,
            ),
            SizedBox(
              height: size.height*.04,
            ),
            ButtonWidget(buttonColor: Colors.red, borderRadius: BorderRadius.circular(12), buttonText: 'Agree',
              textcolor: Colors.white, onTap: (){
                Navigator.pushNamed(context, RoutesName.welcomescreen);
              }, wholewidth: size.width*.85,),
          ],
        ),
      ),
    );
  }
}
