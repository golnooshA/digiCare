// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home',
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
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    color: DesignConfig.textColor,
                    size: DesignConfig.appBarIconSize,
                  ),
                )),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: const BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('assets/cover.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 30, left: 30, bottom: 4),
                        // color: Colors.yellow,
                        child: const Text('Available',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.coverTextColor,
                                fontSize: DesignConfig.titleFontSize,
                                fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 30, bottom: 8),
                        // color: Colors.yellow,
                        child: const Text('Doctors',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.coverTextColor,
                                fontSize: DesignConfig.titleFontSize,
                                fontWeight: FontWeight.w800)),
                      ),
                      ButtonText(
                        onTap: () {},
                        textColor: DesignConfig.buttonTextColor,
                        minWidth: DesignConfig.buttonHeight,
                        text: 'See more',
                        buttonColor: Colors.transparent,
                        height: DesignConfig.coverButtonHeight,
                        padding: const EdgeInsets.all(14),
                        margin:
                            const EdgeInsets.only(left: 30, top: 8, bottom: 30),
                        fontSize: DesignConfig.coverButtonTextSize,
                        borderColor: DesignConfig.coverTextColor,
                      ),
                    ],
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                        height: 120,
                        alignment: Alignment.center,
                        margin:
                        const EdgeInsets.only(bottom: 20, left: 30, right: 8),
                        decoration: const BoxDecoration(
                            color: DesignConfig.lightBlue
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              margin:
                              const EdgeInsets.only(bottom: 8, left: 30, right: 30, top: 8),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/information.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Container(
                              margin:
                              const EdgeInsets.only(bottom: 8, left: 30, right: 30, top: 8),
                              child: const Text('User Information',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                            ),


                          ],
                        )
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){},
                  child: Container(
                      height: 120,
                      alignment: Alignment.center,
                      margin:
                      const EdgeInsets.only(bottom: 20, left: 8, right: 30),
                      decoration: const BoxDecoration(
                          color: DesignConfig.middleBlue
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            margin:
                            const EdgeInsets.only(bottom: 8, left: 30, right: 30, top: 8),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/siren.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            margin:
                            const EdgeInsets.only(bottom: 8, left: 30, right: 30, top: 8),
                            child: const Text('Ambulance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
                                    fontSize: DesignConfig.textFontSize,
                                    fontWeight: FontWeight.w400)),
                          ),


                        ],
                      )
                  ),
                ),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: const Text('Categories',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: DesignConfig.textColor,
                          fontSize: DesignConfig.textFontSize,
                          fontWeight: FontWeight.w600)),
                ),

                GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: const Text('more',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),

            SingleChildScrollView(
              reverse: false,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 30, right: 8, top: 8, bottom: 30),
                      child: const Text('Eye',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 30),
                      child: const Text('Dentist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 30),
                      child: const Text('Family',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 30),
                      child: const Text('Pediatrician',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 30),
                      child: const Text('Psychologist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 30),
                      child: const Text('Orthopedist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 30),
                      child: const Text('Neurologist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: DesignConfig.darkBlue,
                      margin:
                      const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 30),
                      child: const Text('Psychiatrist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.coverTextColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
