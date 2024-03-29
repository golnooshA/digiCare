import 'package:digi/page/signIn.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';
import 'signUp.dart';

class AboutUs extends StatelessWidget {

  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('About Us',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: DesignConfig.textColor,
                  fontSize: DesignConfig.titleFontSize,
                  fontWeight: FontWeight.w600)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            child: const Icon(
              Icons.menu,
              color: DesignConfig.textColor,
              size: DesignConfig.appBarIconSize,
            ),
            onTap: () {},
          ),

        ),
        body: SingleChildScrollView(
          reverse: true,
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   width: double.infinity,
              //   height: 150,
              //   alignment: Alignment.center,
              //   margin:
              //       const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              //   decoration: const BoxDecoration(
              //     // color: Colors.amber,
              //     image: DecorationImage(
              //       image: AssetImage('assets/logo.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              Container(
                margin:
                const EdgeInsets.only(left: 30, right: 30, bottom: 12,top: 30),
                alignment: Alignment.centerLeft,
                child: const Text('''This is a multitasks application that helps all people, especially elder individuals, to monitor their health and have contact with their doctor. The list of features are shown below:

• Medical Record
• Medical History
• Remote Monitoring
• Pill Reminder
• Online chats with doctors
• Online appointment reservation
• Diets
• Sports activities and meditation''',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: DesignConfig.textColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
