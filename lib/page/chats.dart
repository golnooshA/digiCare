// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';
import 'oneChat.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       drawer: Menu(),
        appBar: AppBar(

          centerTitle: true,
          title: const Text('Chats',
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
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const OneChat()));
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      color: DesignConfig.lightBlue,
                      child: const Text('1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.appBarTextFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              alignment: Alignment.centerLeft,
                              child: const Text('Dr.Sara Gonzalez',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),

                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: const Text(
                                        "Delete Chat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize:
                                            DesignConfig.appBarTextFontSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this chat?",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize: DesignConfig.textFontSize,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      actions: [
                                        Expanded(
                                          flex:1,
                                          child: ButtonText(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                              textColor: Colors.green,
                                              minWidth: 50,
                                              text: "Yes",
                                              buttonColor: Colors.transparent,
                                              height: 30),
                                        ),
                                        Expanded(
                                          flex:1,
                                          child: ButtonText(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                              textColor: Colors.red,
                                              minWidth: 50,
                                              text: "No",
                                              buttonColor: Colors.transparent,
                                              height: 30),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 130),
                                child: const Icon(Icons.delete,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('May 9, 2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const OneChat()));
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      color: DesignConfig.lightBlue,
                      child: const Text('2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.appBarTextFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              alignment: Alignment.centerLeft,
                              child: const Text('Gillian Hans, NP',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),

                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: const Text(
                                        "Delete Chat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize:
                                            DesignConfig.appBarTextFontSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this chat?",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize: DesignConfig.textFontSize,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      actions: [
                                        Expanded(
                                          flex:1,
                                          child: ButtonText(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                              textColor: Colors.green,
                                              minWidth: 50,
                                              text: "Yes",
                                              buttonColor: Colors.transparent,
                                              height: 30),
                                        ),
                                        Expanded(
                                          flex:1,
                                          child: ButtonText(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                              textColor: Colors.red,
                                              minWidth: 50,
                                              text: "No",
                                              buttonColor: Colors.transparent,
                                              height: 30),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 140),
                                child: const Icon(Icons.delete,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('May 9, 2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const OneChat()));
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      color: DesignConfig.lightBlue,
                      child: const Text('3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.appBarTextFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              alignment: Alignment.centerLeft,
                              child: const Text('Dr. Jawad Shaikh, MD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),

                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: const Text(
                                        "Delete Chat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize:
                                            DesignConfig.appBarTextFontSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this chat?",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize: DesignConfig.textFontSize,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      actions: [
                                        Expanded(
                                          flex:1,
                                          child: ButtonText(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                              textColor: Colors.green,
                                              minWidth: 50,
                                              text: "Yes",
                                              buttonColor: Colors.transparent,
                                              height: 30),
                                        ),
                                        Expanded(
                                          flex:1,
                                          child: ButtonText(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                              textColor: Colors.red,
                                              minWidth: 50,
                                              text: "No",
                                              buttonColor: Colors.transparent,
                                              height: 30),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 90),
                                child: const Icon(Icons.delete,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('May 9, 2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
