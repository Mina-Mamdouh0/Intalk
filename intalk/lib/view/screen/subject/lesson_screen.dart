
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/view/screen/exam_screen.dart';
import 'package:intalk/view/screen/subject/video_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: ()=>Get.back(),
          child: Icon(Icons.arrow_back_ios_outlined,
            color: Themes.greyishBrownColor,size: widthScreen*0.06,),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: heightScreen*0.2,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Themes.lightBlueGreyColor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text('1st low of motion',
                  style: TextStyle(
                      color: Themes.dodgerBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: widthScreen*0.06
                  ),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('15 Lesson | ',
                      style: TextStyle(
                          color: Themes.dodgerBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: widthScreen*0.03
                      ),),
                    Text('Types of force',
                      style: TextStyle(
                          color: Themes.greyishBrownColor,
                          fontWeight: FontWeight.bold,
                          fontSize: widthScreen*0.03
                      ),),
                  ],
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     LinearPercentIndicator(
                      width: widthScreen*0.6,
                      animation: true,
                      lineHeight: 10.0,
                      animationDuration: 2500,
                      percent: 0.8,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Themes.dodgerBlueColor,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: widthScreen*0.1,
                        height:  widthScreen*0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Themes.dodgerBlueColor,
                        ),
                        child: const Center(
                          child: Icon(Icons.play_arrow,color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
          Expanded(child:ListView.builder(
            itemCount: 10,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){
                      Get.to( ExamScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black,
                            )
                          ),
                          child:
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('assets/images/subject/subjectimage.png',
                                height: widthScreen*0.25,
                                width: widthScreen*0.25),
                          ),
                        ),
                        SizedBox(width: widthScreen*0.05,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What is force',
                              style: TextStyle(
                                  color: Themes.greyishBrownColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: widthScreen*0.05
                              ),),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.people_alt_outlined,
                                color: Colors.grey),

                                Text('1200 students enrolled',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: widthScreen*0.04
                                  ),),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }) ,)
        ],
      ),
    );
  }
}