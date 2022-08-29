
import 'package:flutter/material.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/view/widget/buttons.dart';

class VailNumberScreen extends StatelessWidget {
  const VailNumberScreen({Key? key}) : super(key: key);

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(height: heightScreen*0.58,),


              Text('Enter your location',
                style: TextStyle(
                    fontSize: widthScreen*0.04,
                    fontWeight: FontWeight.bold,
                    color: Themes.greyishBrownColor
                ),),

              SizedBox(height: heightScreen*0.025,),
              AuthButton(
                fct: (){},
                nameButton: 'Continue',
                colorButton: Themes.dodgerBlueColor,
              ),




            ],
          ),
        ),
      ),
    );
  }
}
