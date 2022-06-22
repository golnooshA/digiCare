import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'dart:async';
// ignore_for_file: library_private_types_in_public_api

class OneDocument extends StatefulWidget {
  const OneDocument({Key? key}) : super(key: key);

  @override
  _OneDocumentState createState() => _OneDocumentState();
}

class _OneDocumentState extends State<OneDocument> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_sharp,
              color: DesignConfig.textColor,
              size: DesignConfig.appBarIconSize,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(
                        top: 30, left: 30, right: 12, bottom: 12),
                    child: const Text('Bones X-R graphy',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.appBarTextFontSize,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                  top: 12, left: 30, right: 30, bottom: 12),
              child: const Text('Dr.Sara Gonzalez',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: DesignConfig.textFieldColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w400)),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                  top: 12, left: 30, right: 30, bottom: 12),
              child: const Text('May 9, 2022 - 15:45 ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: DesignConfig.buttonColorDarkBlue,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                  top: 12, left: 30, right: 30, bottom: 12),
              child: const Text(
                  'We describe the case of a 61-year-old male patient, in which the search for the cause of chronic respiratory failure, severe pulmonary hypertension and secondary erythrocytosis resulted in a diagnosis of combined pulmonary fibrosis and emphysema (CPFE). This is a unique, recently characterised syndrome with upper-lobe emphysema and pulmonary fibros',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: DesignConfig.textColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w400)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      // width: double.infinity,
                      alignment: Alignment.centerLeft,
                      margin:
                          const EdgeInsets.only(top: 30, bottom: 8, left: 30),
                      child: Image.asset('assets/img9.png',
                          fit: BoxFit.cover, width: 80, height: 80),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 8, left: 30),
                      child: const Text('Chest X-ray',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // width: double.infinity,
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 30, bottom: 8),
                      child: Image.asset('assets/img10.png',
                          fit: BoxFit.cover, width: 80, height: 80),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 8),
                      child: const Text('Chest X-ray',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // width: double.infinity,
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 30, bottom: 8),
                      child: Image.asset('assets/img9.png',
                          fit: BoxFit.cover, width: 80, height: 80),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 8),
                      child: const Text('Chest X-ray',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // width: double.infinity,
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(top: 30, bottom: 8, right: 30),
                      child: Image.asset('assets/img10.png',
                          fit: BoxFit.cover, width: 80, height: 80),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 8 ,right: 30),
                      child: const Text('Chest X-ray',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
