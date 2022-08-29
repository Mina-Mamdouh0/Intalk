
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/buttons.dart';
import 'package:intalk/view/widget/text_form.dart';

class SignInScreen extends StatefulWidget {
   const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController=TextEditingController(text: '');
  final TextEditingController passwordController=TextEditingController(text: '');
  final keyForm=GlobalKey<FormState>();
  bool obscure=true;

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
        child: SingleChildScrollView(
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
                    padding: EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )
                    ),
                    child:
                    Form(
                      key: keyForm,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //const Spacer(),
                            AuthButton(
                              nameButton: 'Sign in with FaceBook',
                              icon: FontAwesomeIcons.facebookF,
                              colorButton: Themes.darkishPinkColor,
                              fct: (){},
                            ),
                            AuthButton(
                              nameButton: 'Sign in with Google',
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
                            TextFieldForm(
                             controller: emailController,
                             hintText: 'e-mail',
                             inputType: TextInputType.emailAddress,
                             validator: (value){
                               if(value!.isEmpty || !value.contains('@')){
                                 return 'Please Enter The valid Email ';
                               }else{
                                 return '';
                               }
                             },
                            ),
                            TextFieldForm(
                              controller: passwordController,
                              hintText: 'password',
                              inputType: TextInputType.visiblePassword,
                              validator: (value){
                                if(value!.isEmpty ){
                                  return 'Please Enter The valid Password ';
                                }else{
                                  return '';
                                }
                              },
                              obscure: obscure,
                              fctSuffixIcon: (){
                                setState(() {
                                  obscure=!obscure;
                                });
                              },

                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                  child: Text('Forget Password ?',
                                      style: TextStyle(
                                          color: Themes.greyishBrownColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      )),
                                  onPressed: (){
                                    GlobalMethod.navigatorTo(nameScreen: Routes.enterEmailScreen);
                                  },
                                ),
                              ),
                            ),
                            AuthButton(
                              nameButton: 'Sign in',
                              colorButton: Themes.dodgerBlueColor,
                              fct: (){
                                GlobalMethod.navigatorOff(nameScreen: Routes.btnNavBar);

                              },
                            ),
                            //const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  )



                ],
              ),

              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: heightScreen*0.13,),
                    Image.asset('assets/images/auth/signin.png',
                    height:heightScreen*0.25 ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
