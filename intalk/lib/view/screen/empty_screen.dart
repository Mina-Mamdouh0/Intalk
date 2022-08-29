
import 'package:flutter/material.dart';
import 'package:intalk/view/widget/empty_widget.dart';

class EmptyCreditCard extends StatelessWidget {
  const EmptyCreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Add Credit Card',
        title: 'No credit cards',
        imagePath: 'assets/images/empty/creditcardempty.png',
        subTitle: 'Please add some credit cards to your account',
      ),
    );
  }
}

class EmptyFriend extends StatelessWidget {
  const EmptyFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Go Back',
        title: 'Your friends list is empty',
        imagePath: 'assets/images/empty/friendempty.png',
        subTitle: 'Please check your internet connection',
      ),
    );
  }
}

class EmptyInbox extends StatelessWidget {
  const EmptyInbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Go Back',
        title: 'Your inbox is empty',
        imagePath: 'assets/images/empty/inboxempty.png',
        subTitle: 'All incoming requests will be listed in this folder',
      ),
    );
  }
}

class EmptyMessage extends StatelessWidget {
  const EmptyMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Go Back',
        title: 'No messages',
        imagePath: 'assets/images/empty/messageempty.png',
        subTitle: 'You have no active chats',
      ),
    );
  }
}

class EmptyInternet extends StatelessWidget {
  const EmptyInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Try again',
        title: 'No internet connection',
        imagePath: 'assets/images/empty/nointernet.png',
        subTitle: 'Please check your internet connection',
      ),
    );
  }
}

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Go back',
        title: 'No notifications',
        imagePath: 'assets/images/empty/notificationempty.png',
        subTitle: 'No notifications enabled ',
      ),
    );
  }
}

class EmptyResult extends StatelessWidget {
  const EmptyResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Go back',
        title: 'No results found',
        imagePath: 'assets/images/empty/resultempty.png',
        subTitle: 'Try adjusting your research to find what you are looking for',
      ),
    );
  }
}

class EmptyWallet extends StatelessWidget {
  const EmptyWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        fct: (){},
        nameButton: 'Go back',
        title: 'Your wallet is empty',
        imagePath: 'assets/images/empty/walletempty.png',
        subTitle: 'Your wallet is empty. Please add payment method first',
      ),
    );
  }
}



