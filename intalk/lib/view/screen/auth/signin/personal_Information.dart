
import 'package:flutter/material.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/auth/name_screen.dart';
import 'package:intalk/view/widget/buttons.dart';
import 'package:intalk/view/widget/text_form.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final TextEditingController fullNameController=TextEditingController(text: '');
  final TextEditingController barthDayController=TextEditingController(text: '');
  final TextEditingController emailController=TextEditingController(text: '');
  final TextEditingController genderController=TextEditingController(text: '');
  final TextEditingController subjectController=TextEditingController(text: '');
  final TextEditingController educationYearController=TextEditingController(text: '');

  final formKey=GlobalKey<FormState>();

  List<String> gender=['Male','Famale'];
  List<String> subject=['subject1','subject2','subject3'];
  List<String> educationYear=['2011','2012'];
  String valueGender = '';
  String valueSubject = '';
  String valueEducationYear = '';

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
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

               const NameScreen(nameScreen: 'Personal Information',
                   isBackButton: false),

                TextFieldForm(
                  controller: fullNameController,
                  hintText: 'Full Name',
                  prefixIcon: Icons.perm_identity,
                  inputType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Full Name';
                    }
                    return '';
                  },
                  ),
                SelectedFormFiled(
                  controller:genderController ,
                  hintText: 'Gender',
                  list: [ ...gender.map((e){
                    return DropdownMenuItem(
                      value: e,
                      onTap: (){
                        setState(() {
                          valueGender=e;
                          genderController.text=e;
                        });
                      },
                      child:   Text(e),
                    );
                  })],
                  prefixIcon:Icons.merge_type ,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Full Name';
                    }
                    return '';
                  },
                ),
                TextFieldForm(
                  controller: barthDayController,
                  hintText: 'Barth Of Day',
                  prefixIcon: Icons.calendar_today,
                  inputType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Barth Day';
                    }
                    return '';
                  },
                ),
                SelectedFormFiled(
                  controller:subjectController ,
                  hintText: 'Subject',
                  list: [ ...subject.map((e){
                    return DropdownMenuItem(
                      value: e,
                      onTap: (){
                        setState(() {
                          valueSubject=e;
                          subjectController.text=e;
                        });
                      },
                      child:   Text(e),
                    );
                  })],
                  prefixIcon:Icons.subject ,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Subject';
                    }
                    return '';
                  },
                ),


                SelectedFormFiled(
                  controller:educationYearController ,
                  hintText: 'Education Year',
                  list: [ ...educationYear.map((e){
                    return DropdownMenuItem(
                      value: e,
                      onTap: (){
                        setState(() {
                          valueEducationYear=e;
                          educationYearController.text=e;
                        });
                      },
                      child:   Text(e),
                    );
                  })],
                  prefixIcon:Icons.cast_for_education ,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Education Year';
                    }
                    return '';
                  },
                ),

                TextFieldForm(
                  controller: emailController,
                  hintText: 'Email',
                  prefixIcon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Email';
                    }
                    return '';
                  },
                ),



                SizedBox(height: heightScreen*0.06,),
                AuthButton(
                  nameButton: 'Continue',
                  colorButton: Themes.dodgerBlueColor,
                  fct: (){
                    GlobalMethod.navigatorTo(nameScreen: Routes.pinNumberScreen);
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
