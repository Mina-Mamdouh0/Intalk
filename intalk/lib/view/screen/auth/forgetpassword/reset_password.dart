
import 'package:flutter/material.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/auth/name_screen.dart';
import 'package:intalk/view/widget/buttons.dart';
import 'package:intalk/view/widget/text_form.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  final TextEditingController passwordController=TextEditingController(text: '');
  final TextEditingController confirmPasswordController=TextEditingController(text: '');

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
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const  NameScreen(
                    nameScreen: 'Reset Password',
                    isBackButton: false),
                TextFieldForm(
                  controller: passwordController,
                  hintText: 'Enter Password',
                  inputType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Password';
                    }
                    return '';
                  },
                ),

                TextFieldForm(
                  controller: passwordController,
                  hintText: 'Enter Confirm Password',
                  inputType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Confirm Password';
                    }
                    return '';
                  },
                ),
                SizedBox(height: heightScreen*0.03,),
                AuthButton(
                  nameButton: 'Reset',
                  colorButton: Themes.dodgerBlueColor,
                  fct: (){
                    GlobalMethod.navigatorOff(nameScreen: Routes.signInScreen);
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
