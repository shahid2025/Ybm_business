import 'package:flutter/material.dart';
import 'package:ybm_business/create_account/login_screen.dart';
import 'package:ybm_business/routes/routes_name.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }
  void _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
   // Navigator.pushNamed(context, RoutesName.Login);
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  LoginScreen ()));
  }

  @override
  Widget build(BuildContext context) {
    final devsize=MediaQuery.of(context).size;
    return Scaffold(
     backgroundColor: Colors.white,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: devsize.height*.30,
            // ),

            
            // Container(
            //   alignment: Alignment.center,
            //   height:devsize.height*.2 ,
            //
            //   width: devsize.width,
            //
            //   decoration: BoxDecoration(
            //
            //      color: Colors.transparent,
            //
            //       borderRadius: BorderRadius.circular(40)
            //
            //   ),
            //
            //   child: Image.asset('assets/images/Artboard.png',fit: BoxFit.cover,),
            //
            // ),
            Container(
              alignment: Alignment.center,
              height:devsize.height*.14 ,

              width: devsize.width,

              decoration: BoxDecoration(

                 color: Colors.transparent,

                  borderRadius: BorderRadius.circular(40)

              ),

              child: Image.asset('assets/images/YBM_LOGO.png',fit: BoxFit.cover,),

            ),
          ],
        ),
      ),
    );
  }
}
