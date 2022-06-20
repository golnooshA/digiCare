// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class Available extends StatefulWidget {
  const Available({super.key});

  @override
  _AvailableState createState() => _AvailableState();
}

class _AvailableState extends State<Available> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Available Doctors',
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
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20, top: 18),
                child: GestureDetector(
                  child: const Text('Filter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: DesignConfig.darkBlue,
                          fontSize: DesignConfig.textFontSize,
                          fontWeight: FontWeight.w600)),
                  onTap: () {},
                )),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img6.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                              const EdgeInsets.only(left: 70),
                              child: const Icon(Icons.phone,
                                  size: 24, color: DesignConfig.callColor),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Family',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(Icons.star,
                                  size: 20, color: DesignConfig.rateColor),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text('4.98(987)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.rateColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img7.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                              const EdgeInsets.only(left: 80),
                              child: const Icon(Icons.phone,
                                  size: 24, color: DesignConfig.callColor),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('OB-GYN Nurse Practitioner',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(Icons.star,
                                  size: 20, color: DesignConfig.rateColor),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text('4.98(987)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.rateColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img8.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                              child: const Text('Dr. Jawad Shaikh',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                              const EdgeInsets.only(left: 70),
                              child: const Icon(Icons.phone,
                                  size: 24, color: DesignConfig.callColor),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Pediatrician',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(Icons.star,
                                  size: 20, color: DesignConfig.rateColor),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text('4.98(987)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.rateColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                              child: const Text('Dr.Federico Pozzar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                              const EdgeInsets.only(left: 60),
                              child: const Icon(Icons.phone,
                                  size: 24, color: DesignConfig.callColor),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Eye',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(Icons.star,
                                  size: 20, color: DesignConfig.rateColor),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text('4.98(987)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.rateColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 30, bottom: 12, right: 30, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                              child: const Text('Dr.Samanta Atibi',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                              const EdgeInsets.only(left: 80),
                              child: const Icon(Icons.phone,
                                  size: 24, color: DesignConfig.callColor),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Family',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(Icons.star,
                                  size: 20, color: DesignConfig.rateColor),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text('4.98(987)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.rateColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )
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
