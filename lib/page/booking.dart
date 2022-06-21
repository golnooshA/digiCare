// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import '../widget/form.dart';
import 'menu.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  _BookingState createState() => _BookingState();
}

enum SingingCharacter { yes, no }

enum SeeDoctor { yes, no }

enum VisitDoctor { inperson, chat }

class _BookingState extends State<Booking> {
  SingingCharacter? _character = SingingCharacter.yes;
  SeeDoctor? _seeDoctor = SeeDoctor.yes;
  VisitDoctor? _visitDoctor = VisitDoctor.inperson;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // drawer: Menu(),
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
            onTap: () {Navigator.pop(context);},
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
                        margin:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                        alignment: Alignment.centerLeft,
                        child: const Text('Do you have health insurance?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w400)),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: ListTile(
                              title: const Text('Yes',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                              leading: Radio<SingingCharacter>(
                                value: SingingCharacter.yes,
                                groupValue: _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ListTile(
                              title: const Text('No' ,textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                              leading: Radio<SingingCharacter>(
                                value: SingingCharacter.no,
                                groupValue: _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),


                      GestureDetector(
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          margin:
                          const EdgeInsets.only(left: 30, right: 30, bottom: 12),

                          padding: const EdgeInsets.all(4),
                          decoration:  const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: DesignConfig.textFieldColor,
                                width: 2,
                              )
                            ),
                          ),
                          child: Text('What is your insurance?'),
                        ),

                        onTap: (){
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) =>
                                CupertinoActionSheet(
                                  actions: <Widget>[
                                    CupertinoActionSheetAction(
                                      child: Text('Cigna'),
                                      onPressed: () {
                                        Navigator.pop(context, 'Cigna');
                                      },
                                    ),
                                    CupertinoActionSheetAction(
                                      child: Text('Aetna'),
                                      onPressed: () {
                                        Navigator.pop(context, 'Aetna');
                                      },
                                    ),
                                    CupertinoActionSheetAction(
                                      child: Text('INA Assitalia'),
                                      onPressed: () {
                                        Navigator.pop(context, 'INA Assitalia');
                                      },
                                    ),
                                    CupertinoActionSheetAction(
                                      child: Text('Europ Assistance'),
                                      onPressed: () {
                                        Navigator.pop(context, 'Europ Assistance');
                                      },
                                    ),
                                  ],
                                ),
                          );
                        },
                      ),

                      Container(
                        margin:
                        const EdgeInsets.only(left: 30, right: 30, top: 12),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            'Has the patient seen this doctor before?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w400)),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: ListTile(
                              title: const Text('Yes', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                              leading: Radio<SeeDoctor>(
                                value: SeeDoctor.yes,
                                groupValue: _seeDoctor,
                                onChanged: (SeeDoctor? value) {
                                  setState(() {
                                    _seeDoctor = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex:3,
                            child: ListTile(
                              title: const Text('No', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                              leading: Radio<SeeDoctor>(
                                value: SeeDoctor.no,
                                groupValue: _seeDoctor,
                                onChanged: (SeeDoctor? value) {
                                  setState(() {
                                    _seeDoctor = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                        const EdgeInsets.only(left: 30, right: 30, top: 12),
                        alignment: Alignment.centerLeft,
                        child: const Text('Choose the type of appointment',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w400)),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: ListTile(
                              title: const Text(
                                  'In-person', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)
                              ),
                              leading: Radio<VisitDoctor>(
                                value: VisitDoctor.inperson,
                                groupValue: _visitDoctor,
                                onChanged: (VisitDoctor? value) {
                                  setState(() {
                                    _visitDoctor = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ListTile(
                              title: const Text('Chat', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
                              leading: Radio<VisitDoctor>(
                                value: VisitDoctor.chat,
                                groupValue: _visitDoctor,
                                onChanged: (VisitDoctor? value) {
                                  setState(() {
                                    _visitDoctor = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin:
                        const EdgeInsets.only(left: 30, right: 30, top: 12),
                        alignment: Alignment.centerLeft,
                        child: const Text('Select an available time',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w400)),
                      ),
                      Column(
                        children: [
                          Container(
                            color: Colors.lightBlue,
                            margin:
                            const EdgeInsets.only(left: 30, right: 30, top: 24),
                            alignment: Alignment.center,
                            child: const Text('Wed''\n''May 11',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
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
            Expanded(
              flex: 1,
              child: ButtonText(
                onTap: () {},
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Continue Booking',
                buttonColor: DesignConfig.buttonColorBlue,
                height: DesignConfig.buttonHeight,
                margin:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                fontSize: DesignConfig.textFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
