
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/auth/name_screen.dart';
import 'package:intalk/view/widget/buttons.dart';
import 'package:intalk/view/widget/text_form.dart';

class EnterDetailsScreen extends StatefulWidget {
   EnterDetailsScreen({Key? key}) : super(key: key);

  @override
  State<EnterDetailsScreen> createState() => _EnterDetailsScreenState();
}

class _EnterDetailsScreenState extends State<EnterDetailsScreen> {
  final TextEditingController nameController=TextEditingController(text: '');

  final TextEditingController emailController=TextEditingController(text: '');

  final TextEditingController passwordController=TextEditingController(text: '');

  final TextEditingController confirmPasswordController=TextEditingController(text: '');

  bool obscurePassword=true;
  bool obscureConfirmPassword=true;
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double heightScreen=unit.sizeScreen.height;
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const NameScreen(
                 isBackButton: true,
                 nameScreen: 'Enter your Details',
                ),
                TextFieldForm(
                    controller: nameController,
                    hintText: 'User name',
                    inputType: TextInputType.text,
                validator: (value){
                      if(value!.isEmpty){
                        return 'Enter The User Name';
                      }
                      return '';
                },
                isUnderBorder: true,),
                TextFieldForm(
                  controller: emailController,
                  hintText: 'e-mail',
                  inputType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Email';
                    }
                    return '';
                  },
                  isUnderBorder: true,),
                TextFieldForm(
                  controller: passwordController,
                  hintText: 'Password',
                  inputType: TextInputType.visiblePassword,
                  validator: (value){
                    if(value!.isEmpty || value.length>8){
                      return 'Enter The password';
                    }
                    return '';
                  },
                  isUnderBorder: true,
                fctSuffixIcon: (){
                    setState(() {
                      obscurePassword=!obscurePassword;
                    });
                },
                obscure: obscurePassword),
                TextFieldForm(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    inputType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty || passwordController.text!=confirmPasswordController.text){
                        return 'Enter The confirm password';
                      }
                      return '';
                    },
                    isUnderBorder: true,
                    fctSuffixIcon: (){
                      setState(() {
                        obscureConfirmPassword=!obscureConfirmPassword;
                      });
                    },
                    obscure: obscureConfirmPassword),
                SizedBox(height: heightScreen*0.06,),
                AuthButton(
                  nameButton: 'Continue',
                  colorButton: Themes.dodgerBlueColor,
                  fct: (){
                    GlobalMethod.navigatorTo(nameScreen: Routes.personalInformationScreen);
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
