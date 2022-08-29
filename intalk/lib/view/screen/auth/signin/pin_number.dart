
import 'package:flutter/material.dart';
import 'package:intalk/const/global_method.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/widget/buttons.dart';
import 'package:intalk/view/widget/text_form.dart';

class PinNumberScreen extends StatefulWidget {
  const PinNumberScreen({Key? key}) : super(key: key);

  @override
  State<PinNumberScreen> createState() => _PinNumberScreenState();
}

class _PinNumberScreenState extends State<PinNumberScreen> {

  final TextEditingController phoneController=TextEditingController(text: '');
  final TextEditingController locationController=TextEditingController(text: '');

  List<String> location=['Egypt','Labia'];

  String valueLocation = '';
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0,),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: heightScreen*0.05 ,),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/auth/pinnumber.png',
                  height:heightScreen*0.5 ),
                ),


                Text('Enter your location',
                  style: TextStyle(
                      fontSize: widthScreen*0.04,
                      fontWeight: FontWeight.bold,
                      color: Themes.greyishBrownColor
                  ),),

                SelectedFormFiled(
                  controller:locationController ,
                  hintText: 'Location',
                  list: [ ...location.map((e){
                    return DropdownMenuItem(
                      value: e,
                      onTap: (){
                        setState(() {
                          valueLocation=e;
                          locationController.text=e;
                        });
                      },
                      child:   Text(e),
                    );
                  })],
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Location';
                    }
                    return '';
                  },
                ),


                Text('Enter your Phone Number',
                  style: TextStyle(
                      fontSize: widthScreen*0.04,
                      fontWeight: FontWeight.bold,
                      color: Themes.greyishBrownColor
                  ),),

                TextFieldForm(
                  controller: phoneController,
                  hintText: 'Phone Number',
                  inputType: TextInputType.phone,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter The Phone Number';
                    }
                    return '';
                  },
                ),
                SizedBox(height: heightScreen*0.025,),
                AuthButton(
                  nameButton: 'Continue',
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
