
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/model/subject_model.dart';
import 'package:intalk/view/screen/subject/subject_screen.dart';
import 'package:intalk/view/widget/text_form.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   final TextEditingController search=TextEditingController(text: '');


  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return  Scaffold(
      backgroundColor: Themes.lightBlueGreyColor,
      appBar: AppBar(
        backgroundColor: Themes.lightBlueGreyColor,
        elevation: 0.0,
         foregroundColor: Themes.greyishBrownColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Hello, Elias!',
            style: TextStyle(
              color: Themes.greyishBrownColor,
              fontWeight: FontWeight.bold,
                fontSize: widthScreen*0.05
            ),),
            Text('What do you want to learn today?',
            style: TextStyle(
              color: Themes.greyishBrownColor,
              fontWeight: FontWeight.normal,
              fontSize: widthScreen*0.03
            ),),

          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.notifications_on_outlined,
              color: Colors.black,))
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldForm(
                controller: search,
                hintText: 'Games, subjects, people...',
                inputType: TextInputType.text,
            prefixIcon: Icons.search,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text('CATEGORIES',
              style: TextStyle(
                color: Themes.greyishBrownColor,
                fontSize: widthScreen*0.04,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              width: double.infinity,
              height: heightScreen*0.12,
              child: ListView.builder(
                itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Get.to(SubjectScreen(subjectName:subjectList[index].name ));
                      },
                      child: Container(
                        height: heightScreen*0.13,
                         width: widthScreen*0.25,
                         margin: const EdgeInsets.only(
                           right: 10
                         ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Image.asset(subjectList[index].image)),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0),
                              child: Text(subjectList[index].name,
                                style: TextStyle(
                                  color: Themes.greyishBrownColor,
                                  fontSize: widthScreen*0.04,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),

                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('NEW GAMES ',
                style: TextStyle(
                  color: Themes.greyishBrownColor,
                  fontSize: widthScreen*0.04,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            SizedBox(
              width: double.infinity,
              height: heightScreen*0.3,
              child: ListView.builder(
                  itemCount: newsGamesList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Container(
                      height: heightScreen*0.13,
                      width: widthScreen*0.7,
                      margin: const EdgeInsets.only(
                          right: 10
                      ),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(newsGamesList[index].image),
                            ],
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(newsGamesList[index].title,
                              style: TextStyle(
                                color: Themes.greyishBrownColor,
                                fontSize: widthScreen*0.04,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(newsGamesList[index].subTitle,
                              maxLines: 2,
                              style: TextStyle(
                                color: Themes.greyishBrownColor,
                                fontSize: widthScreen*0.03,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),

                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: heightScreen*0.01,),
            lastScore(
                color: Themes.dodgerBlueColor,
                context: context,
                textScore: '70.0',
                score: 0.7,
                subject: 'Science'
            ),
            SizedBox(height: heightScreen*0.01,),
            lastScore(
                color: Themes.darkishPinkColor,
                context: context,
                score: 0.4,
                textScore: '40.0',
                subject: 'Math'
            ),
          ],
        ),
      ),
    );

  }
   Widget lastScore({
  required BuildContext context,
     required String subject,
     required double score,
     required String textScore,
     required Color color,
}){
     return SizedBox(
       width: double.infinity,
       height: MediaQuery.of(context).size.height*0.1,
       child: Row(
         children: [
           Expanded(
             child: Container(
               padding: const EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Last test score',
                     style: TextStyle(
                       color: Themes.greyishBrownColor,
                       fontSize:  MediaQuery.of(context).size.width*0.05,
                       fontWeight: FontWeight.bold,
                     ),),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 5.0),
                     child: Text('Subject: $subject',
                       style: TextStyle(
                         color: Themes.greyishBrownColor,
                         fontSize:  MediaQuery.of(context).size.width*0.04,
                         fontWeight: FontWeight.bold,
                       ),),
                   ),
                 ],
               ),
             ),
           ),
           CircularPercentIndicator(
             radius:  MediaQuery.of(context).size.height*0.045,
             lineWidth: 7.0,
             backgroundColor: color.withOpacity(0.2),
             animation: true,
             percent: score,
             center:  Text(
               '$textScore %',
               style:
               TextStyle(fontWeight: FontWeight.bold,
                   fontSize:  MediaQuery.of(context).size.width*0.035,
                   color: Themes.greyishBrownColor),
             ),
             circularStrokeCap: CircularStrokeCap.round,
             progressColor: color,
           )
         ],
       ),
     );
   }

}
