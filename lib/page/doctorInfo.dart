// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import '../widget/form.dart';
import 'menu.dart';

class DoctorInformation extends StatefulWidget {
  const DoctorInformation({super.key});

  @override
  _DoctorInformationState createState() => _DoctorInformationState();
}

class _DoctorInformationState extends State<DoctorInformation> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          // title: const Text('Home',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //         color: DesignConfig.textColor,
          //         fontSize: DesignConfig.titleFontSize,
          //         fontWeight: FontWeight.w600)),
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
                    Icons.call,
                    color: DesignConfig.callColor,
                    size: DesignConfig.appBarIconSize,
                  ),
                )),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 8),
                        child:  Image.asset('assets/img8.jpg',
                            fit: BoxFit.cover, width: 120, height: 120),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        alignment: Alignment.center,
                        child: const Text('Dr. Jawad Shaikh, MD',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.appBarTextFontSize,
                                fontWeight: FontWeight.w600)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 30, right: 30, bottom: 8),
                        alignment: Alignment.center,
                        child: const Text('Pediatrician',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w400)),
                      ),
                      // TabBar(
                      //   unselectedLabelColor: Colors.black,
                      //   labelColor: Colors.red,
                      //   tabs: const [
                      //     Tab(
                      //       icon: Icon(Icons.person),
                      //     ),
                      //     Tab(
                      //       icon: Icon(
                      //         Icons.add,
                      //       ),
                      //     ),
                      //     Tab(
                      //       icon: Icon(
                      //         Icons.deck,
                      //       ),
                      //     ),
                      //     Tab(
                      //       icon: Icon(
                      //         Icons.child_care,
                      //       ),
                      //     ),
                      //   ],
                      //   controller: _tabController,
                      //   indicatorSize: TabBarIndicatorSize.tab,
                      // ),
                      // Expanded(
                      //   child: TabBarView(
                      //     children: [
                      //       Center(
                      //         child: Text(
                      //           'Screen 1',
                      //         ),
                      //       ),
                      //       Center(
                      //         child: Text(
                      //           'Screen 2',
                      //         ),
                      //       ),
                      //       Center(
                      //         child: Text(
                      //           'Screen 3',
                      //         ),
                      //       ),
                      //       Center(
                      //         child: Text(
                      //           'Screen 4',
                      //         ),
                      //       ),
                      //     ],
                      //     controller: _tabController,
                      //   ),
                      // )
                      // const TabBar(
                      //   unselectedLabelColor: Colors.black,
                      //   labelColor: Colors.red,
                      //
                      //   tabs: [
                      //   Tab( child: Text('About',
                      //       textAlign: TextAlign.center,
                      //       style: TextStyle(
                      //           color: DesignConfig.textColor,
                      //           fontSize: DesignConfig.textFontSize,
                      //           fontWeight: FontWeight.w400))),
                      //   Tab( child: Text('Insurance',
                      //       textAlign: TextAlign.center,
                      //       style: TextStyle(
                      //           color: DesignConfig.textColor,
                      //           fontSize: DesignConfig.textFontSize,
                      //           fontWeight: FontWeight.w400))),
                      //   Tab( child: Text('Location',
                      //       textAlign: TextAlign.center,
                      //       style: TextStyle(
                      //           color: DesignConfig.textColor,
                      //           fontSize: DesignConfig.textFontSize,
                      //           fontWeight: FontWeight.w400))),
                      //   Tab( child: Text('Review',
                      //       textAlign: TextAlign.center,
                      //       style: TextStyle(
                      //           color: DesignConfig.textColor,
                      //           fontSize: DesignConfig.textFontSize,
                      //           fontWeight: FontWeight.w400)))
                      // ],
                      //
                      // ),
                      //
                      // TabBarView(
                      //   children: [
                      //     Container(child: Center(child: Text('people'))),
                      //     Text('Person')
                      //   ],
                      //   // controller: _tabController,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ButtonText(
                onTap: () {},
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Book Appointment',
                buttonColor: DesignConfig.buttonColorBlue,
                height: DesignConfig.buttonHeight,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                fontSize: DesignConfig.textFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
