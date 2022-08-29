
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/view/screen/subject/lesson_screen.dart';
import 'package:intalk/view/widget/buttons.dart';
import 'package:intalk/view/widget/text_form.dart';

class SubjectScreen extends StatefulWidget {
  final String subjectName;
  const SubjectScreen({Key? key, required this.subjectName}) : super(key: key);

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  final TextEditingController chapterController=TextEditingController(text: '');
  final TextEditingController lessonController=TextEditingController(text: '');
  List<String> chapter=['chapter1','chapter2','chapter1','chapter2','chapter1','chapter2','chapter1','chapter2','chapter1','chapter2'];
  List<String> lesson=['lesson1','lesson2'];
  String value = '';

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: heightScreen*0.6,
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
            decoration: BoxDecoration(
               color: Themes.lightBlueGreyColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(120)
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: heightScreen*0.09,),
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: ()=>Get.back(),
                child: Icon(Icons.arrow_back_ios_outlined,
                  color: Themes.greyishBrownColor,size: widthScreen*0.08,)),
            ),
                Image.asset('assets/images/subject/subjectimage.png',
                height: heightScreen*0.38,),
                SizedBox(height: heightScreen*0.015,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(widget.subjectName,
                    style: TextStyle(
                        color: Themes.greyishBrownColor,
                        fontWeight: FontWeight.bold,
                        fontSize: widthScreen*0.07
                    ),),
                )

              ],
            ),
          ),
          SizedBox(height: heightScreen*0.025,),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
            child: SelectedFormFiled(
              controller:chapterController ,
              hintText: 'Chapter',
              list: [ ...chapter.map((e){
                return DropdownMenuItem(
                  value: e,
                  onTap: (){
                    setState(() {
                      value=e;
                      chapterController.text=e;
                    });
                  },
                  child:   Text(e),
                );
              })],
              validator: (value){
                if(value!.isEmpty){
                  return 'Enter The Chapter';
                }
                return '';
              },
            ),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
            child: SelectedFormFiled(
              controller:lessonController ,
              hintText: 'Lesson',
              list: [ ...lesson.map((e){
                return DropdownMenuItem(
                  value: e,
                  onTap: (){
                    setState(() {
                      value=e;
                      lessonController.text=e;
                    });
                  },
                  child:   Text(e),
                );
              })],
              validator: (value){
                if(value!.isEmpty){
                  return 'Enter The Lesson';
                }
                return '';
              },
            ),
          ),
          SizedBox(height: heightScreen*0.025,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
            child: AuthButton(
              nameButton: 'Continue',
              colorButton: Themes.dodgerBlueColor,
              fct: (){
                Get.to(const LessonScreen());
              },
            ),
          ),



        ],
      ),
    );
  }
}
