// ignore_for_file: library_private_types_in_public_api
import 'package:digi/page/addAlarm.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class PillReminder extends StatefulWidget {
  const PillReminder({super.key});

  @override
  _PillReminderState createState() => _PillReminderState();
}

class _PillReminderState extends State<PillReminder> {

  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

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
                      const AddAlarm()));
            },
        child: const Icon(Icons.add, size: DesignConfig.appBarIconSize, color: Colors.white)),
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Pill Reminder',
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
            onTap: () {

            },
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 30, bottom: 12, right: 30, left: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: GestureDetector(
                      onTap: (){  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AddAlarm()));},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            alignment: Alignment.centerLeft,
                            child: const Text('06:15',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
                                    fontSize: DesignConfig.appBarTextFontSize,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(bottom: 8),
                            child: const Text('Blood pressure',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
                                    fontSize: DesignConfig.textFontSize,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                        });
                      },

                      activeTrackColor: DesignConfig.middleBlue,
                      activeColor: DesignConfig.darkBlue,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 12, bottom: 12, right: 30, left: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: GestureDetector(
                      onTap: (){  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AddAlarm()));},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            alignment: Alignment.centerLeft,
                            child: const Text('11:00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
                                    fontSize: DesignConfig.appBarTextFontSize,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(bottom: 8),
                            child: const Text('Vitamins',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
                                    fontSize: DesignConfig.textFontSize,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                        });
                      },

                      activeTrackColor: DesignConfig.middleBlue,
                      activeColor: DesignConfig.darkBlue,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 12, bottom: 12, right: 30, left: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: GestureDetector(
                      onTap: (){  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AddAlarm()));},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            alignment: Alignment.centerLeft,
                            child: const Text('17:30',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
                                    fontSize: DesignConfig.appBarTextFontSize,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(bottom: 8),
                            child: const Text('Blood pressure',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: DesignConfig.textColor,
                                    fontSize: DesignConfig.textFontSize,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Switch(
                      value: isSwitched3,
                      onChanged: (value) {
                        setState(() {
                          isSwitched3= value;
                        });
                      },

                      activeTrackColor: DesignConfig.middleBlue,
                      activeColor: DesignConfig.darkBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
