
import 'package:flutter/material.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/buttons.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: heightScreen*0.1,),
              Text('Check your Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: widthScreen*0.08,
                    fontWeight: FontWeight.bold,
                    color: Themes.greyishBrownColor
                ),),
              SizedBox(height: heightScreen*0.03,),
              Text('We ‘ve sent a password recover instruction to your email ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: widthScreen*0.04,
                    fontWeight: FontWeight.normal,
                    color: Themes.greyishBrownColor
                ),),
              Image.asset('assets/images/auth/checkemail.png',
              height: heightScreen*0.45),

              AuthButton(
                nameButton: 'Open Email',
                colorButton: Themes.dodgerBlueColor,
                fct: (){
                  GlobalMethod.navigatorTo(nameScreen: Routes.resetPassword);
                },
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical:heightScreen*0.01),
                child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            side: BorderSide(
                              color: Themes.warmGreyColor,
                            )
                          ),
                        ),
                        padding: MaterialStateProperty.all(  EdgeInsets.symmetric(vertical: heightScreen*0.02,))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text('Will do it later',
                          style:  TextStyle(
                            color: Colors.black,
                            fontSize: widthScreen*0.05,
                            fontWeight:FontWeight.normal,
                          ),)
                      ],
                    )),
              ),
              SizedBox(height: heightScreen*0.04,),
              Text('Did n’t get any email? Check your spam folder or retry with availd email. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: widthScreen*0.04,
                    fontWeight: FontWeight.normal,
                    color: Themes.greyishBrownColor
                ),),




            ],
          ),
        ),
      ),
    );
  }
}
