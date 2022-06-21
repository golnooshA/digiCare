// ignore_for_file: library_private_types_in_public_api

import 'package:digi/page/editInfo.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({super.key});

  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('UserInformation',
              textAlign: TextAlign.left,
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
                  child: const Text('Edit',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: DesignConfig.darkBlue,
                          fontSize: DesignConfig.textFontSize,
                          fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditInformation()));

                  },
                )),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              // height: 100,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(30),
              // color: Colors.yellow,
              child: Image.asset('assets/img1.jpg',
                  fit: BoxFit.cover, width: 120, height: 120),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 30, right: 8, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 8, right: 30, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Sara',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Surname',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Pozzar',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Gender',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Female',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Date of birth',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Sep 2,1996',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Blood Type',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('O+',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            ),
            const Divider(
              color: DesignConfig.textColor,
              height: 2,
              endIndent: 30,
              indent: 30,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 30, right: 8, top: 12, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Wheelchair',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('No',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Hereditary disease',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Diabetes',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text('Special disease',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 20, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Migraine',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            ),
            const Divider(
              color: DesignConfig.textColor,
              height: 2,
              endIndent: 30,
              indent: 30,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 30, right: 8, top: 20, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Phone Number',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text('0039123456789',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Address',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 8, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('Piazzale Aldo Moro,5,00185 Roma RM',
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
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
                        left: 30, right: 8, top: 12, bottom: 30),
                    alignment: Alignment.centerLeft,
                    child: const Text('Email',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textFieldColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8, right: 30, bottom: 30, top: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text('test@test.com',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.textFontSize,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
