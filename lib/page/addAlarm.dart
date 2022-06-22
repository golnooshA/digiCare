// ignore_for_file: library_private_types_in_public_api
import 'package:digi/page/pillReminder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import '../core/design_config.dart';
import '../widget/button_text.dart';
import '../widget/form.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class AddAlarm extends StatefulWidget {
  const AddAlarm({super.key});

  @override
  _AddAlarmState createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  final TextEditingController pillNameController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController finishTimeController = TextEditingController();
  final TextEditingController dayController = TextEditingController();
  final TextEditingController doctorNameController = TextEditingController();
  final TextEditingController pillDescriptionController =
      TextEditingController();

  final FocusNode pillNameFocusNode = FocusNode();
  final FocusNode startTimeFocusNode = FocusNode();
  final FocusNode finishTimeFocusNode = FocusNode();
  final FocusNode dayFocusNode = FocusNode();
  final FocusNode doctorNameFocusNode = FocusNode();
  final FocusNode pillDescriptionFocusNode = FocusNode();

  DateTime time = DateTime(2016, 5, 10, 22, 35);

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // title: const Text('Add Alarm',
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
            onTap: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: const Text(
                            "Delete Alarm",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.appBarTextFontSize,
                                fontWeight: FontWeight.w600),
                          ),
                          content: const Text(
                            "Do you want to delete this alarm?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w400),
                          ),
                          actions: [
                            Expanded(
                              flex: 1,
                              child: ButtonText(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  textColor: Colors.green,
                                  minWidth: 50,
                                  text: "Yes",
                                  buttonColor: Colors.transparent,
                                  height: 30),
                            ),
                            Expanded(
                              flex: 1,
                              child: ButtonText(
                                  onTap: () {
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
                  child: const Icon(
                    Icons.delete,
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
                      _DatePickerItem(
                        children: <Widget>[
                          CupertinoButton(
                            onPressed: () => _showDialog(
                              CupertinoDatePicker(
                                initialDateTime: time,
                                mode: CupertinoDatePickerMode.time,
                                use24hFormat: true,
                                onDateTimeChanged: (DateTime newTime) {
                                  setState(() => time = newTime);
                                },
                              ),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '${time.hour}',
                                      style: const TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.bigFontSize,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      'Hour',
                                      style:  TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.textFontSize,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),

                                const Text(
                                  '   :   ',
                                  style:  TextStyle(
                                      color: DesignConfig.textColor,
                                      fontSize: DesignConfig.bigFontSize,
                                      fontWeight: FontWeight.w600),
                                ),

                                Column(
                                  children: [
                                    Text(
                                      '${time.minute}',
                                      style: const TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.bigFontSize,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      'Minute',
                                      style:  TextStyle(
                                          color: DesignConfig.textColor,
                                          fontSize: DesignConfig.textFontSize,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      TextFieldSimple(
                        title: 'Pill Name',
                        controller: pillNameController,
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 30, right: 30, bottom: 8, top: 12),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: pillNameFocusNode,
                        onFieldSubmitted: (s) {
                          pillNameFocusNode.unfocus();
                          startTimeFocusNode.requestFocus();
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(
                                    right: 12, left: 30, bottom: 8, top: 8),
                                // padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                    color: DesignConfig.textFieldColor,
                                    width: 2,
                                  )),
                                ),
                                child: const Text('Start Time',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: DesignConfig.textFieldColor,
                                        fontSize: DesignConfig.textFontSize,
                                        fontWeight: FontWeight.w400)),
                              ),
                              onTap: () {
                                DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                    minTime: DateTime(2022, 01, 12),
                                    maxTime: DateTime(2024, 01, 12),
                                    theme: const DatePickerTheme(
                                        headerColor: Colors.white,
                                        backgroundColor: Colors.white,
                                        itemStyle: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                DesignConfig.textFontSize),
                                        doneStyle: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                    onChanged: (date) {}, onConfirm: (date) {
                                  print('confirm $date');
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.en);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(
                                    right: 30, left: 12, bottom: 8, top: 8),
                                // padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                    color: DesignConfig.textFieldColor,
                                    width: 2,
                                  )),
                                ),
                                child: const Text('Finish Time',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: DesignConfig.textFieldColor,
                                        fontSize: DesignConfig.textFontSize,
                                        fontWeight: FontWeight.w400)),
                              ),
                              onTap: () {
                                DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                    minTime: DateTime(2022, 01, 12),
                                    maxTime: DateTime(2024, 01, 12),
                                    theme: const DatePickerTheme(
                                        headerColor: Colors.white,
                                        backgroundColor: Colors.white,
                                        itemStyle: TextStyle(
                                            color: DesignConfig.textColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                DesignConfig.textFontSize),
                                        doneStyle: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                    onChanged: (date) {}, onConfirm: (date) {
                                  print('confirm $date');
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.en);
                              },
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
                              right: 30, left: 30, bottom: 8, top: 8),
                          // padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              color: DesignConfig.textFieldColor,
                              width: 2,
                            )),
                          ),
                          child: const Text('Day',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: DesignConfig.textFieldColor,
                                  fontSize: DesignConfig.textFontSize,
                                  fontWeight: FontWeight.w400)),
                        ),
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) =>
                                CupertinoActionSheet(
                              actions: <Widget>[
                                CupertinoActionSheetAction(
                                  child: const Text('Monday'),
                                  onPressed: () {},
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Tuesday'),
                                  onPressed: () {},
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Wednesday'),
                                  onPressed: () {},
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Thusday'),
                                  onPressed: () {},
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Friday'),
                                  onPressed: () {},
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Saturday'),
                                  onPressed: () {},
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Sunday'),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      TextFieldSimple(
                        title: 'Dr. Name',
                        controller: doctorNameController,
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            right: 30, left: 30, bottom: 8, top: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: doctorNameFocusNode,
                        onFieldSubmitted: (s) {
                          doctorNameFocusNode.unfocus();
                          pillDescriptionFocusNode.requestFocus();
                        },
                      ),
                      TextFieldSimple(
                        title: 'Pill Description',
                        controller: pillDescriptionController,
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            right: 30, left: 30, bottom: 8, top: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: pillDescriptionFocusNode,
                        onFieldSubmitted: (s) {
                          pillDescriptionFocusNode.unfocus();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ButtonText(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PillReminder()));
                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Set Alarm',
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

class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  CustomPicker({DateTime? currentTime, LocaleType? locale})
      : super(locale: locale) {
    this.currentTime = currentTime ?? DateTime.now();
    this.setLeftIndex(this.currentTime.hour);
    this.setMiddleIndex(this.currentTime.minute);
    this.setRightIndex(this.currentTime.second);
  }

  @override
  String? leftStringAtIndex(int index) {
    if (index >= 0 && index < 24) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? middleStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? rightStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String leftDivider() {
    return "|";
  }

  @override
  String rightDivider() {
    return "|";
  }

  @override
  List<int> layoutProportions() {
    return [1, 2, 1];
  }

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex())
        : DateTime(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex());
  }
}

class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 30, right:30, top: 30, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
