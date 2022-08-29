
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';


class DetailsFriend extends StatelessWidget {
  final String grade;
  final String email;
  final String phoneNumber;
  final String image;
  final String name;
  const DetailsFriend({Key? key, required this.grade, required this.email, required this.phoneNumber, required this.image, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Themes.lightBlueGreyColor,
        leading: InkWell(
          onTap: ()=>Get.back(),
          child: Icon(Icons.arrow_back_ios_outlined,
            color: Themes.greyishBrownColor,size: widthScreen*0.06,),
        ),
        actions: [
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(FontAwesomeIcons.heart,
                color: Themes.greyishBrownColor,size: widthScreen*0.07,),
            ),
          ),
   /* DropdownButton(
      value: '1',
      onChanged: (value) {},
      dropdownColor: Colors.white,
      icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Icon(Icons.more_horiz,
          color: Themes.greyishBrownColor,size: widthScreen*0.07,),
      ),
      items:  [
        DropdownMenuItem(
        value: '1',
          child:  Text('Remove',
            style: TextStyle(
                color: Themes.darkishPinkColor,
                fontWeight: FontWeight.normal,
                fontSize: widthScreen*0.05
            ),),),
      ],
    ),*/
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Themes.lightBlueGreyColor,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: heightScreen*0.3,),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: heightScreen*0.2,),
                        buildPadding(
                          widthScreen: widthScreen,
                          subTitle: grade,
                          title: 'Grade',
                          icons: Icons.school_outlined,
                        ),
                        buildPadding(
                          widthScreen: widthScreen,
                          subTitle: email,
                          title: 'Email',
                          icons: Icons.email,
                        ),
                        buildPadding(
                          widthScreen: widthScreen,
                          subTitle: phoneNumber,
                          title: 'Mobile Number',
                          icons: Icons.phone,
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: heightScreen*0.2,),
                  CircleAvatar(
                    radius: widthScreen*0.18,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(image),
                  ),
                  SizedBox(height: heightScreen*0.05,),
                  Text(name,
                    style: TextStyle(
                        color: Themes.greyishBrownColor,
                        fontWeight: FontWeight.bold,
                        fontSize: widthScreen*0.06
                    ),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildPadding(
      {required double widthScreen,required IconData icons,required String title,
        required String subTitle}) {
    return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: widthScreen*0.15,
                          width: widthScreen*0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black,
                            )
                          ),
                          child: Center(
                            child: Icon(icons,
                            size: widthScreen*0.1),
                          ),
                        ),
                        SizedBox(width: widthScreen*0.05,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,
                              style: TextStyle(
                                  color: Themes.greyishBrownColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: widthScreen*0.05
                              ),),
                            const SizedBox(height: 5,),
                             Text(subTitle,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: widthScreen*0.04
                              ),),
                          ],
                        )
                      ],
                    ),
                  );
  }
}
