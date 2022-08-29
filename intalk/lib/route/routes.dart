
import 'package:get/get.dart';
import 'package:intalk/view/screen/auth/forgetpassword/check_email.dart';
import 'package:intalk/view/screen/auth/forgetpassword/enter_email.dart';
import 'package:intalk/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:intalk/view/screen/auth/signin/enter_details_screen.dart';
import 'package:intalk/view/screen/auth/signin/personal_Information.dart';
import 'package:intalk/view/screen/auth/signin/pin_number.dart';
import 'package:intalk/view/screen/auth/signin/signin_screen.dart';
import 'package:intalk/view/screen/auth/signin/vailed_number.dart';
import 'package:intalk/view/screen/auth/signup_screen.dart';
import 'package:intalk/view/screen/btm_bar.dart';
import 'package:intalk/view/screen/subject/lesson_screen.dart';
import 'package:intalk/view/screen/subject/subject_screen.dart';
import 'package:intalk/view/screen/subject/video_screen.dart';

class RoutesApp{

  static String initialScreen=Routes.signUpScreen;

  static final listScreen=[
    GetPage(name: Routes.signUpScreen,
        page: ()=>const SignUpScreen(),
    ),
    GetPage(name: Routes.signInScreen,
      page: ()=>const  SignInScreen(),
    ),
    GetPage(name: Routes.enterDetailsScreen,
      page: ()=>  EnterDetailsScreen(),
    ),
    GetPage(name: Routes.personalInformationScreen,
      page: ()=>  const PersonalInformation(),
    ),
    GetPage(name: Routes.pinNumberScreen,
      page: ()=>  const PinNumberScreen(),
    ),
    GetPage(name: Routes.vailNumberScreen,
      page: ()=>  const VailNumberScreen(),
    ),
    GetPage(name: Routes.enterEmailScreen,
      page: ()=>  EnterEmailScreen(),
    ),
    GetPage(name: Routes.checkEmailScreen,
      page: ()=>  const CheckEmailScreen(),
    ),
    GetPage(name: Routes.resetPassword,
      page: ()=>  const ResetPassword(),
    ),
    GetPage(name: Routes.btnNavBar,
      page: ()=>  const BtmNavScreen(),
    ),

  ];

}
class Routes{
static String signUpScreen='/SignUpScreen';
static String signInScreen='/SignInScreen';
static String enterDetailsScreen='/EnterDetailsScreen';
static String personalInformationScreen='/PersonalInformationScreen';
static String pinNumberScreen='/PinNumberScreen';
static String vailNumberScreen='/VailNumberScreen';
static String enterEmailScreen='/EnterEmailScreen';
static String checkEmailScreen='/CheckEmailScreen';
static String resetPassword='/ResetPassword';
static String btnNavBar='/BtnNavBar';



}