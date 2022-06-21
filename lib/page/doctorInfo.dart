// ignore_for_file: library_private_types_in_public_api

import 'package:digi/page/booking.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'commnet.dart';
import 'menu.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;


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
              Icons.arrow_back_ios_sharp,
              color: DesignConfig.textColor,
              size: DesignConfig.appBarIconSize,
            ),
            onTap: () {Navigator.pop(context);},
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {UrlLauncher.launch("tel://1234567890");},
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
              flex: 5,
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

                      DefaultTabController(
                        length: 4,
                        initialIndex: 0,
                        child: SizedBox(
                          height: 400.0,
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 30, left: 30, right: 30
                            ),
                            child: Column(
                              children: <Widget>[
                                const TabBar(
                                  tabs: <Widget>[
                                    Tab(
                                      child:  Text('About',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: DesignConfig.textColor,
                                              fontSize: DesignConfig.tabBarFontSize,
                                              fontWeight: FontWeight.w400)),

                                    ),
                                    Tab(
                                      child:  Text('Insurnce',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: DesignConfig.textColor,
                                              fontSize: DesignConfig.tabBarFontSize,
                                              fontWeight: FontWeight.w400)),
                                    ),

                                    Tab(
                                      child:  Text('Location',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: DesignConfig.textColor,
                                              fontSize: DesignConfig.tabBarFontSize,
                                              fontWeight: FontWeight.w400)),
                                    ),

                                    Tab(
                                      child:  Text('Review',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: DesignConfig.textColor,
                                              fontSize: DesignConfig.tabBarFontSize,
                                              fontWeight: FontWeight.w400)),
                                    ),

                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 20, bottom: 20
                                        ),
                                        // color:Colors.orange,
                                        child: const Text('Ephraim Ovitsh, MD,'
                                            ' received his B.A. from the City University of New York, '
                                            'Brooklyn College, graduating cum laude in 1986.'
                                            ' He attended the New York Medical College, '
                                            'where he received his M.D. degree in 1992. '
                                            'He completed his postgraduate residency training at The Saint Vincents Hospital & Medical Center of New York. Upon graduation, he was awarded the Laproendoscopic Surgeons Award in 1996. Dr. Ovitsh served as the Assistant Residency Program Director in the Department of Obstetrics and Gynecology at Saint Vincents Hospital & Medical Center of New York until 2004.',
                                            textAlign: TextAlign.left,
                                            maxLines: 14,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: DesignConfig.textColor,
                                                fontSize: DesignConfig.tabBarViewFontSize,
                                                fontWeight: FontWeight.w400)),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 20, bottom: 20
                                        ),
                                        // color:Colors.orange,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  alignment: Alignment.center,
                                                  margin: const EdgeInsets.only(right: 12),
                                                  decoration: const BoxDecoration(
                                                    // color: Colors.amber,
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/in1.png'),
                                                      // fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),

                                                const  Text('Aetna',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: DesignConfig.textColor,
                                                        fontSize: DesignConfig.tabBarViewFontSize,
                                                        fontWeight: FontWeight.w400)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  alignment: Alignment.center,
                                                  margin: const EdgeInsets.only(right: 12),
                                                  decoration: const BoxDecoration(
                                                    // color: Colors.amber,
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/in2.png'),
                                                      // fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),

                                                const Text('Cigna',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: DesignConfig.textColor,
                                                        fontSize: DesignConfig.tabBarViewFontSize,
                                                        fontWeight: FontWeight.w400)),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 20, bottom: 20
                                        ),
                                        // color:Colors.orange,
                                        child: Column(
                                          children: [
                                            Row(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(
                                                        right: 12, top: 12, bottom: 12, left: 20),
                                                    alignment: Alignment.topLeft,
                                                    child: const Text('Address',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            color: DesignConfig.textColor,
                                                            fontSize: DesignConfig.tabBarViewFontSize,
                                                            fontWeight: FontWeight.w400)),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 8, bottom: 8, top: 12, right: 20),
                                                    alignment: Alignment.centerLeft,
                                                    child: const Text('Piazzale Aldo Moro,5,00185 Roma RM',
                                                        textAlign: TextAlign.left,
                                                        maxLines: 3,
                                                        style: TextStyle(
                                                            color: DesignConfig.textColor,
                                                            fontSize: DesignConfig.tabBarViewFontSize,
                                                            fontWeight: FontWeight.w600)),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Row(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(
                                                        right: 12, top: 12, bottom: 12, left: 20),
                                                    alignment: Alignment.topLeft,
                                                    child: const Text('Office Number',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            color: DesignConfig.textColor,
                                                            fontSize: DesignConfig.tabBarViewFontSize,
                                                            fontWeight: FontWeight.w400)),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 8, bottom: 8, top: 12, right: 20),
                                                    alignment: Alignment.centerLeft,
                                                    child: const Text('0034123456-8',
                                                        textAlign: TextAlign.left,
                                                        maxLines: 3,
                                                        style: TextStyle(
                                                            color: DesignConfig.textColor,
                                                            fontSize: DesignConfig.tabBarViewFontSize,
                                                            fontWeight: FontWeight.w600)),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Row(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(
                                                        right: 12, top: 12, bottom: 12, left: 18),
                                                    alignment: Alignment.topLeft,
                                                    child: const Text('Email',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            color: DesignConfig.textColor,
                                                            fontSize: DesignConfig.tabBarViewFontSize,
                                                            fontWeight: FontWeight.w400)),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 8, bottom: 8, top: 12, right: 18),
                                                    alignment: Alignment.centerLeft,
                                                    child: const Text('dr.jawad@gmail.com',
                                                        textAlign: TextAlign.left,
                                                        maxLines: 3,
                                                        style: TextStyle(
                                                            color: DesignConfig.textColor,
                                                            fontSize: DesignConfig.tabBarViewFontSize,
                                                            fontWeight: FontWeight.w600)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 20, bottom: 20
                                        ),
                                        alignment: Alignment.centerLeft,
                                        // color:Colors.orange,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ButtonText(
                                              onTap: () { Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => SendCommnet()));},
                                              textColor: DesignConfig.buttonTextColor,
                                              minWidth: 80,
                                              text: 'Comment',
                                              buttonColor: DesignConfig.buttonColorDarkBlue,
                                              height: DesignConfig.commentButtonHeight,
                                              // margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                                              padding: const EdgeInsets.all(12),
                                              fontSize: DesignConfig.textFontSize,
                                            ),

                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 12, bottom: 8),
                                                  alignment: Alignment.topLeft,
                                                  child: const Text('I’ve been going to Dr. Ovitch for a decade. He’s wonderful, caring practitioner. I’d highly recommend him.',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: DesignConfig.textColor,
                                                          fontSize: DesignConfig.textFontSize,
                                                          fontWeight: FontWeight.w400)),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                          bottom: 12),
                                                      alignment: Alignment.topLeft,
                                                      child: const Text('Gabrialla F.',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              color: DesignConfig.textFieldColor,
                                                              fontSize: DesignConfig.mediumFontSize,
                                                              fontWeight: FontWeight.w400)),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                           bottom: 8,),
                                                      alignment: Alignment.centerLeft,
                                                      child: const Text('January 16,2022',
                                                          textAlign: TextAlign.left,
                                                          maxLines: 3,
                                                          style: TextStyle(
                                                              color: DesignConfig.textFieldColor,
                                                              fontSize: DesignConfig.mediumFontSize,
                                                              fontWeight: FontWeight.w400)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 30, bottom: 8),
                                                  alignment: Alignment.topLeft,
                                                  child: const Text('The most gentle and kind doctor! He made me feel very comfortable at a time I was feeling vulnerable. Highly recommend.',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: DesignConfig.textColor,
                                                          fontSize: DesignConfig.textFontSize,
                                                          fontWeight: FontWeight.w400)),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                          bottom: 12),
                                                      alignment: Alignment.topLeft,
                                                      child: const Text('Gabrialla F.',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              color: DesignConfig.textFieldColor,
                                                              fontSize: DesignConfig.mediumFontSize,
                                                              fontWeight: FontWeight.w400)),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                        bottom: 8,),
                                                      alignment: Alignment.centerLeft,
                                                      child: const Text('January 16,2022',
                                                          textAlign: TextAlign.left,
                                                          maxLines: 3,
                                                          style: TextStyle(
                                                              color: DesignConfig.textFieldColor,
                                                              fontSize: DesignConfig.mediumFontSize,
                                                              fontWeight: FontWeight.w400)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ButtonText(
                onTap: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Booking()));},
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
