
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/model/friend_model.dart';
import 'package:intalk/view/screen/details_friend.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Friends',
          style: TextStyle(
              color: Themes.greyishBrownColor,
              fontWeight: FontWeight.bold,
              fontSize: widthScreen*0.07
          ),),
      ),
      body: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,vertical:widthScreen*0.02 ),
              child: InkWell(
                onTap: (){
                  Get.to( DetailsFriend(
                    image:friendList[index].image ,
                    email: friendList[index].email,
                    phoneNumber:friendList[index].phoneNumber ,
                    name: friendList[index].name,
                    grade:friendList[index].grade ,
                  ));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: widthScreen*0.1,
                      backgroundColor: Colors.white,
                      backgroundImage:  AssetImage(friendList[index].image,),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(friendList[index].name,
                            style: TextStyle(
                                color: Themes.greyishBrownColor,
                                fontWeight: FontWeight.bold,
                                fontSize: widthScreen*0.05
                            ),),
                          SizedBox(height: heightScreen*0.02,),
                          Text(friendList[index].phoneNumber,
                            style: TextStyle(
                                color: Themes.greyishBrownColor,
                                fontWeight: FontWeight.normal,
                                fontSize: widthScreen*0.04
                            ),),
                        ],
                      ),
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Themes.lightBlueGreyColor,
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                          )

                        ),
                        child: Row(
                          children: [
                             Icon(Icons.emoji_events_rounded,
                            color: Themes.greyishBrownColor,),
                            SizedBox(width: widthScreen*0.01,),
                            Text('Games',
                              style: TextStyle(
                                  color: Themes.greyishBrownColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: widthScreen*0.03
                              ),),
                          ],
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
