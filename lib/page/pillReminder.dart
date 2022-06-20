// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class PillReminder extends StatefulWidget {
  const PillReminder({super.key});

  @override
  _PillReminderState createState() => _PillReminderState();
}

class _PillReminderState extends State<PillReminder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
        child: const Icon(Icons.add, size: DesignConfig.appBarIconSize, color: Colors.white)),
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Pill Reminder',
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
              onTap: () {},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 80,
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
                              child: const Text('Bones X-R graphy',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 45),
                              child: const Icon(Icons.remove_red_eye,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 4),
                              child: const Icon(Icons.edit,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 4),
                              child: const Icon(Icons.delete,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Dr.Sara Gonzalez',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w400)),
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
              onTap: () {},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 80,
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
                              child: const Text('Bones X-R graphy',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 45),
                              child: const Icon(Icons.remove_red_eye,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 4),
                              child: const Icon(Icons.edit,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 4),
                              child: const Icon(Icons.delete,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Dr.Sara Gonzalez',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w400)),
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
              onTap: () {},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 80,
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
                              child: const Text('Bones X-R graphy',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 45),
                              child: const Icon(Icons.remove_red_eye,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 4),
                              child: const Icon(Icons.edit,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(left: 4),
                              child: const Icon(Icons.delete,
                                  size: 24,
                                  color: DesignConfig.buttonColorDarkBlue),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Dr.Sara Gonzalez',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w400)),
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
