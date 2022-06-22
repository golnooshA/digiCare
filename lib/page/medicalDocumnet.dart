// ignore_for_file: library_private_types_in_public_api

import 'package:digi/page/addDocumnet.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'editDocument.dart';
import 'menu.dart';
import 'oneDocument.dart';

class MedicalDocumnet extends StatefulWidget {
  const MedicalDocumnet({super.key});

  @override
  _MedicalDocumnetState createState() => _MedicalDocumnetState();
}

class _MedicalDocumnetState extends State<MedicalDocumnet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: DesignConfig.buttonColorBlue,

            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const AddDocument()));
            },
            child: const Icon(Icons.add, size: DesignConfig.appBarIconSize, color: Colors.white)),
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Medical Documnet',
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const OneDocument()));
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 70),
                                child: const Icon(Icons.remove_red_eye,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const EditDocument()));
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 4),
                                child: const Icon(Icons.edit,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: const Text(
                                        "Delete Documnet",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize:
                                            DesignConfig.appBarTextFontSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this document?",
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
                                margin: const EdgeInsets.only(left: 4),
                                child: const Icon(Icons.delete,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
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
                    top: 20, bottom: 12, right: 30, left: 30),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const OneDocument()));
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 70),
                                child: const Icon(Icons.remove_red_eye,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const EditDocument()));
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 4),
                                child: const Icon(Icons.edit,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: const Text(
                                        "Delete Documnet",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize:
                                            DesignConfig.appBarTextFontSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this document?",
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
                                margin: const EdgeInsets.only(left: 4),
                                child: const Icon(Icons.delete,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
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
                    top: 20, bottom: 12, right: 30, left: 30),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const OneDocument()));
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 70),
                                child: const Icon(Icons.remove_red_eye,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const EditDocument()));
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(left: 4),
                                child: const Icon(Icons.edit,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: const Text(
                                        "Delete Documnet",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontSize:
                                            DesignConfig.appBarTextFontSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this document?",
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
                                margin: const EdgeInsets.only(left: 4),
                                child: const Icon(Icons.delete,
                                    size: 24,
                                    color: DesignConfig.buttonColorDarkBlue),
                              ),
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
