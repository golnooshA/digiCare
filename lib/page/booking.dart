// ignore_for_file: library_private_types_in_public_api

import 'package:digi/page/appointmentList.dart';
import 'package:digi/page/getAppointment.dart';
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

  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'A', 'April 18'));
    sampleData.add(new RadioModel(false, 'B', 'April 17'));
    sampleData.add(new RadioModel(false, 'C', 'April 16'));
    sampleData.add(new RadioModel(false, 'D', 'April 15'));
  }

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
            onTap: () {
              Navigator.pop(context);
            },
          ),
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
                              title: const Text('No',
                                  textAlign: TextAlign.left,
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
                          margin: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 12),
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: DesignConfig.textFieldColor,
                              width: 2,
                            )),
                          ),
                          child: Text('What is your insurance?'),
                        ),
                        onTap: () {
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
                              title: const Text('Yes',
                                  textAlign: TextAlign.left,
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
                            flex: 3,
                            child: ListTile(
                              title: const Text('No',
                                  textAlign: TextAlign.left,
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
                              title: const Text('In-person',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.textFontSize,
                                      fontWeight: FontWeight.w400)),
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
                              title: const Text('Chat',
                                  textAlign: TextAlign.left,
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

                      SingleChildScrollView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 24,bottom: 12),
                                  alignment: Alignment.center,
                                  child: const Text('Wed' '\n' 'May 11',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.textFontSize,
                                          fontWeight: FontWeight.w400)),
                                ),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:15am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:30am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:45am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '09:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                              ],
                            ),

                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 24,bottom: 12),
                                  alignment: Alignment.center,
                                  child: const Text('Th' '\n' 'May 12',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.textFontSize,
                                          fontWeight: FontWeight.w400)),
                                ),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:15am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:30am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:45am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '09:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                              ],
                            ),

                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 24,bottom: 12),
                                  alignment: Alignment.center,
                                  child: const Text('Fr' '\n' 'May 13',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.textFontSize,
                                          fontWeight: FontWeight.w400)),
                                ),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:15am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:30am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:45am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '09:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                              ],
                            ),

                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 24,bottom: 12),
                                  alignment: Alignment.center,
                                  child: const Text('Sat' '\n' 'May 11',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.textFontSize,
                                          fontWeight: FontWeight.w400)),
                                ),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:15am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:30am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '08:45am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                                ButtonText(
                                    onTap: (){},
                                    textColor: DesignConfig.textColor,
                                    minWidth: 40,
                                    text: '09:00am',
                                    buttonColor: DesignConfig.lightBlue,
                                    padding: EdgeInsets.all(12),
                                    fontSize: DesignConfig.subtitleFontSize,
                                    height: 30),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ButtonText(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AppointmentList()));
                },
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

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 50.0,
            width: 50.0,
            child: new Center(
              child: new Text(_item.buttonText,
                  style: new TextStyle(
                      color: _item.isSelected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: new BoxDecoration(
              color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
              border: new Border.all(
                  width: 1.0,
                  color: _item.isSelected ? Colors.blueAccent : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: new Text(_item.text),
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}
