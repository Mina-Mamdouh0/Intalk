
import 'package:flutter/material.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/auth/name_screen.dart';
import 'package:intalk/view/widget/buttons.dart';
import 'package:intalk/view/widget/text_form.dart';

class EnterEmailScreen extends StatelessWidget {
   EnterEmailScreen({Key? key}) : super(key: key);

  final TextEditingController emailController=TextEditingController(text: '');

  final formKey=GlobalKey<FormState>();


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
          child: Form(
            key:formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const NameScreen(
                  isBackButton: true,
                  nameScreen: 'Enter your Email',
                ),
                TextFieldForm(
                  controller: emailController,
                  hintText: 'email address',
                  inputType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'The email address you provided is not associated with your account';
                    }
                    return '';
                  },
                  isUnderBorder: true,),
                SizedBox(height: heightScreen*0.06,),
                AuthButton(
                  nameButton: 'Send Email',
                  colorButton: Themes.dodgerBlueColor,
                  fct: (){
                    GlobalMethod.navigatorTo(nameScreen: Routes.checkEmailScreen);
                  },
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
