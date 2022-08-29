
import 'package:flutter/material.dart';
import 'package:intalk/view/screen/btm_screen/score_screen.dart';
import 'package:intalk/view/screen/btm_screen/friend_screen.dart';
import 'package:intalk/view/screen/btm_screen/home_screen.dart';
import 'package:intalk/view/screen/btm_screen/profile_screen.dart';
import 'package:intalk/view/screen/exam_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


BuildContext? testContext;
class BtmNavScreen extends StatefulWidget {

  const BtmNavScreen({Key? key,}) : super(key: key);

  @override
  _BtmNavScreenState createState() => _BtmNavScreenState();
}

class _BtmNavScreenState extends State<BtmNavScreen> {
   PersistentTabController? _controller;
  bool _hideNavBar=false;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }



  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.school_outlined),
        title: "Score",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.people_alt_outlined),
        title: "Friend",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.perm_identity),
        title: "Profile",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
  List<Widget> _navBars() {
    return [
      HomeScreen(),
       const ScoreScreen(),
      const FriendScreen(),
      const ProfileScreen(),
    ];
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _navBars(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: const EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        selectedTabScreenContext: (context) {
          testContext = context;
        },
        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.circular(20.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property
      ),
    );
  }
}
