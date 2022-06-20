// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class Dentist extends StatefulWidget {
  const Dentist({super.key});

  @override
  _DentistState createState() => _DentistState();
}

class _DentistState extends State<Dentist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dentist',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: DesignConfig.textColor,
                  fontSize: DesignConfig.titleFontSize,
                  fontWeight: FontWeight.w600)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_sharp,
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
                          child: const Text('Dentist',
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
                          image: AssetImage('assets/img2.jpg'),
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
                          child: const Text('Dentist',
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
                          image: AssetImage('assets/img3.jpg'),
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
                          child: const Text('Dentist',
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
                          image: AssetImage('assets/img4.jpg'),
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
                          child: const Text('Dentist',
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
                              child: const Text('Dr.Francesco Pozzar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.appBarTextFontSize,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              margin:
                              const EdgeInsets.only(left: 45),
                              child: const Icon(Icons.phone,
                                  size: 24, color: DesignConfig.callColor),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: const Text('Dentist',
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