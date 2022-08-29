

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/buttons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Themes.lightBlueGreyColor,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(height: heightScreen*0.4,),
                Container(
                  width: double.infinity,
                  height: heightScreen*0.6,
                  padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      AuthButton(
                        nameButton: 'Sign Up with FaceBook',
                         icon: FontAwesomeIcons.facebookF,
                        colorButton: Themes.darkishPinkColor,
                        fct: (){},
                      ),
                      AuthButton(
                        nameButton: 'Sign Up with Google',
                         icon: FontAwesomeIcons.google,
                        colorButton: Themes.warmGreyColor,
                        fct: (){},
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: heightScreen*0.01),
                        child: Text('Or',
                           textAlign: TextAlign.center,
                          style: TextStyle(
                          color: Themes.greyishBrownColor,
                          fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      AuthButton(
                        nameButton: 'Sign Up with Gmail',
                        colorButton: Themes.dodgerBlueColor,
                        fct: (){
                          GlobalMethod.navigatorTo(nameScreen: Routes.enterDetailsScreen);
                        },
                      ),
                      SizedBox(height: heightScreen*0.03,),
                      RichText(
                          text: TextSpan(
                        text: 'Already have an account ? ',
                        style: TextStyle(
                          fontSize: widthScreen*0.05,
                          fontWeight: FontWeight.bold,
                          color: Themes.greyishBrownColor
                        ),
                        children: [
                          TextSpan(
                          text: 'Sign in ',
                          style: TextStyle(
                              fontSize: widthScreen*0.05,
                              fontWeight: FontWeight.bold,
                              color: Themes.dodgerBlueColor
                          ),
                              recognizer: TapGestureRecognizer()..onTap=(){
                            GlobalMethod.navigatorTo(nameScreen: Routes.signInScreen);
                              }
                          ),
                        ]
                      )),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
                child:
                Column(
                  children: [
                    SizedBox(height: heightScreen*0.21,),
                    Image.asset('assets/images/auth/signup.png',
                    height: heightScreen*0.21),
                  ],
                ))

          ],
        ),
      ),
    );
  }
}
