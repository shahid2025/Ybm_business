import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ybm_business/bottom_navigation/app_bootom_navigation_bar.dart';
import 'package:ybm_business/buisness_profile/searches_buisness.dart';
import 'package:ybm_business/chat_option/about.dart';
import 'package:ybm_business/chat_option/booked_marked.dart';
import 'package:ybm_business/chat_option/contact_us.dart';
import 'package:ybm_business/chat_option/faqs.dart';
import 'package:ybm_business/chat_option/message.dart';
import 'package:ybm_business/chat_option/setting.dart';
import 'package:ybm_business/chat_option/term_&_Conditions.dart';
import 'package:ybm_business/create_account/Filter_Screen.dart';
import 'package:ybm_business/create_account/forgot%20password.dart';
import 'package:ybm_business/create_account/login_screen.dart';
import 'package:ybm_business/create_account/otp_verification.dart';
import 'package:ybm_business/create_account/reset_password.dart';
import 'package:ybm_business/create_account/select_interest.dart';
import 'package:ybm_business/create_account/setup_company_profile.dart';
import 'package:ybm_business/create_account/sign_up.dart';
import 'package:ybm_business/create_account/signup_select_interests.dart';
import 'package:ybm_business/create_account/submitted.dart';
import 'package:ybm_business/create_account/video_tutorial.dart';
import 'package:ybm_business/create_account/welcome_screen.dart';
import 'package:ybm_business/notification_tabbar/tabbar.dart';
import 'package:ybm_business/profile_screen/edit_profile.dart';
import 'package:ybm_business/profile_screen/my_profile.dart';
import 'package:ybm_business/routes/routes_name.dart';
import 'package:ybm_business/select_payment_methods.dart';
import 'package:ybm_business/splash_screen/splash.dart';
import 'package:ybm_business/tabbar_class/tabbar.dart';




class Routes{
  static MaterialPageRoute generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context)=> const SplashScreen());
      case RoutesName.Login:
        return MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen());
        case RoutesName.Signup:
          return MaterialPageRoute(builder: (BuildContext context)=> const Sign_up());
      case RoutesName.Signup_select_innterest:
        return MaterialPageRoute(builder: (BuildContext context)=>  Signup_select_interest());
      case RoutesName.forgetPassword:
        return MaterialPageRoute(builder: (BuildContext context)=> const Forgotpassword());

      case RoutesName.Otpverification:
        return MaterialPageRoute(builder: (BuildContext context)=> const Otpverification());

      case RoutesName.resetpassword:
        return MaterialPageRoute(builder: (BuildContext context)=> const amii());
      case RoutesName.filterscreen:
        return MaterialPageRoute(builder: (BuildContext context)=>  Filter_Screen());


      case RoutesName.MessageScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const Message());

      case RoutesName.BookedMarkedScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const BookedMarked());

      case RoutesName.SelectInterest:
        return MaterialPageRoute(builder: (BuildContext context)=> const Select_interst());


      case RoutesName.MyProfile:
        return MaterialPageRoute(builder: (BuildContext context)=> const Myprofile());

      case RoutesName.EditProfile:
        return MaterialPageRoute(builder: (BuildContext context)=> const Edit_profile1());

      case RoutesName.Setting:
        return MaterialPageRoute(builder: (BuildContext context)=> const Settings());

      case RoutesName.Contact_us:
        return MaterialPageRoute(builder: (BuildContext context)=> const Contact_Screen());

      case RoutesName.Faqs_Screen:
        return MaterialPageRoute(builder: (BuildContext context)=> const Faq());

      case RoutesName.searchTabbarScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const searcches());

      case RoutesName.setupcompany:
        return MaterialPageRoute(builder: (BuildContext context)=> const SetUp_Company());

      case RoutesName.video_tutorial:
        return MaterialPageRoute(builder: (BuildContext context)=> const Video_tutorial());

      case RoutesName.tabbar_notification:
        return MaterialPageRoute(builder: (BuildContext context)=> const Tabbar_notification());

      case RoutesName.tabbar_about:
        return MaterialPageRoute(builder: (BuildContext context)=> const Tabbar());

      case RoutesName.term_condition:
        return MaterialPageRoute(builder: (BuildContext context)=> const Terms_Conditions());

      case RoutesName.about_us:
        return MaterialPageRoute(builder: (BuildContext context)=> const About_screen());

      case RoutesName.appBottomnavigatiobar:
        return MaterialPageRoute(builder: (BuildContext context)=> const AppBottomNavigationBar());

      case RoutesName.welcomescreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const WelcomeScreen());


      case RoutesName.submitted:
        return MaterialPageRoute(builder: (BuildContext context)=> const Submitted());

        case RoutesName.slect_payment_method:
        return MaterialPageRoute(builder: (BuildContext context)=> const Select_payment_methods());

      default: return MaterialPageRoute(builder: (_){
        return Scaffold(
body: Center(child: Text('No routes defined')),
        );
      }

      );
    }
  }
}




