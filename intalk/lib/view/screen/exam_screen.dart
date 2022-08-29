
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
enum Answer{one,two,three,four,five}
class ExamScreen extends StatefulWidget {
   ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  int duration= const Duration(seconds: 60).inSeconds;

  int numberOfQuestion=40;

  int questionNo=20;

  void timer(){
    Timer(Duration(seconds: duration), (){});
  }

  Answer answer=Answer.five;
  int stateAnswer=1;
  //1=>adi
  //2=>green
  //3=>red
  //4=>border green

  @override
  Widget build(BuildContext context) {
    int stateAnswer=1;
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
         backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){},
          child: Icon(Icons.clear,
              color: Themes.greyishBrownColor),
        ),
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.watch_later_outlined,
            color: Themes.greyishBrownColor,
            ),
            SizedBox(width: widthScreen*0.02,),
            Text('$duration s remaining',
              style: TextStyle(
                  color: Themes.darkishPinkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: widthScreen*0.05
              ),),

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinearPercentIndicator(
            width: widthScreen,
            animation: true,
            lineHeight: 8.0,
            animationDuration: 2500,
            percent: (questionNo/numberOfQuestion),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Themes.darkishPinkColor,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0,horizontal:widthScreen*0.05 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: heightScreen*0.01,),
                Text('QUESTION $questionNo OF $numberOfQuestion',
                  style: TextStyle(
                      color: Themes.greyishBrownColor,
                      fontWeight: FontWeight.normal,
                      fontSize: widthScreen*0.04
                  ),),
                SizedBox(height: heightScreen*0.02,),
                Text('Which of the following influence the gravitational force?',
                  style: TextStyle(
                      color: Themes.greyishBrownColor,
                      fontWeight: FontWeight.bold,
                      fontSize: widthScreen*0.05
                  ),),
                SizedBox(height: heightScreen*0.01,),
                Card(
                  elevation: stateAnswer==1?1:0,
                  child: Container(
                    width: double.infinity,
                    height: heightScreen*0.09,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color:stateAnswer==2?Colors.green:stateAnswer==3?Colors.red:Colors.white,
                      border: Border.all(
                        color: stateAnswer==4?Colors.green:Colors.white,
                      )
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: Answer.one,
                          groupValue: answer,
                          onChanged: (Answer? ans){
                            setState(() {
                              answer=ans!;
                            });
                          },
                        ),
                        SizedBox(width: widthScreen*0.05,),
                        Text('Ans 1',
                          style: TextStyle(
                              color: Themes.greyishBrownColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widthScreen*0.05
                          ),),


                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: stateAnswer==1?1:0,
                  child: Container(
                    width: double.infinity,
                    height: heightScreen*0.09,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color:stateAnswer==2?Colors.green:stateAnswer==3?Colors.red:Colors.white,
                        border: Border.all(
                          color: stateAnswer==4?Colors.green:Colors.white,
                        )
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: Answer.one,
                          groupValue: answer,
                          onChanged: (Answer? ans){
                            setState(() {
                              answer=ans!;
                            });
                          },
                        ),
                        SizedBox(width: widthScreen*0.05,),
                        Text('Ans 1',
                          style: TextStyle(
                              color: Themes.greyishBrownColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widthScreen*0.05
                          ),),


                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: stateAnswer==1?1:0,
                  child: Container(
                    width: double.infinity,
                    height: heightScreen*0.09,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color:stateAnswer==2?Colors.green:stateAnswer==3?Colors.red:Colors.white,
                        border: Border.all(
                          color: stateAnswer==4?Colors.green:Colors.white,
                        )
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: Answer.one,
                          groupValue: answer,
                          onChanged: (Answer? ans){
                            setState(() {
                              answer=ans!;
                            });
                          },
                        ),
                        SizedBox(width: widthScreen*0.05,),
                        Text('Ans 1',
                          style: TextStyle(
                              color: Themes.greyishBrownColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widthScreen*0.05
                          ),),


                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: stateAnswer==1?1:0,
                  child: Container(
                    width: double.infinity,
                    height: heightScreen*0.09,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color:stateAnswer==2?Colors.green:stateAnswer==3?Colors.red:Colors.white,
                        border: Border.all(
                          color: stateAnswer==4?Colors.green:Colors.white,
                        )
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: Answer.one,
                          groupValue: answer,
                          onChanged: (Answer? ans){
                            setState(() {
                              answer=ans!;
                            });
                          },
                        ),
                        SizedBox(width: widthScreen*0.05,),
                        Text('Ans 1',
                          style: TextStyle(
                              color: Themes.greyishBrownColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widthScreen*0.05
                          ),),


                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
          const Spacer(),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,
            vertical: widthScreen*0.02),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text('Science Exam',
                  style: TextStyle(
                      color: Themes.greyishBrownColor,
                      fontWeight: FontWeight.bold,
                      fontSize: widthScreen*0.05
                  ),),
                SizedBox(height: heightScreen*0.01,),
                Text('QUESTION $questionNo OF $numberOfQuestion',
                  style: TextStyle(
                      color: Themes.greyishBrownColor,
                      fontWeight: FontWeight.normal,
                      fontSize: widthScreen*0.035
                  ),),
                  ],
                ),
                const Spacer(),
                Icon(Icons.arrow_back,size: widthScreen*0.08),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Themes.dodgerBlueColor,
                        ),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                        ),
                      padding: MaterialStateProperty.all( EdgeInsets.symmetric(horizontal:widthScreen*0.05,
                      vertical: widthScreen*0.03))

                    ),
                    child: Text('Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: widthScreen*0.04
                      ),))

              ],
            ),
          )

        ],
      ),
    );
  }
}
