import 'package:digi/page/appointmentList.dart';
import 'package:digi/widget/button_text.dart';
import 'package:digi/widget/form.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class GetAppointment extends StatefulWidget {
  const GetAppointment({super.key});

  @override
  _GetAppointmentState createState() => _GetAppointmentState();
}

class _GetAppointmentState extends State<GetAppointment> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController phoneCallController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode surnameFocusNode = FocusNode();
  final FocusNode birthdayFocusNode = FocusNode();
  final FocusNode genderFocusNode = FocusNode();
  final FocusNode phoneCallFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // title: const Text('GetAppointment',
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

        ),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                 Row(
                   children: [
                     Expanded(
                       flex:1,
                       child: TextFieldSimple(
                         title: 'Name',
                         controller: nameController,
                         width: double.infinity,
                         margin: const EdgeInsets.only(left: 30, right: 12, top: 30, bottom: 8),
                         borderRadius: BorderRadius.circular(0),
                         focusNode: nameFocusNode,
                         onFieldSubmitted: (s) {
                           nameFocusNode.unfocus();
                           surnameFocusNode.requestFocus();
                         },
                       ),
                     ),
                     Expanded(
                       flex: 1,
                       child: TextFieldSimple(
                         title: 'Surname',
                         controller: surnameController,
                         width: double.infinity,
                         margin: const EdgeInsets.only(right: 30, left: 12, top: 30, bottom: 8),
                         borderRadius: BorderRadius.circular(0),
                         focusNode: surnameFocusNode,
                         onFieldSubmitted: (s) {
                           surnameFocusNode.unfocus();
                           birthdayFocusNode.requestFocus();
                         },
                       ),
                     ),
                   ],
                 ),
                  TextFieldSimple(
                    title: 'Date of birth',
                    controller: birthdayController,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: birthdayFocusNode,
                    onFieldSubmitted: (s) {
                      birthdayFocusNode.unfocus();
                      genderFocusNode.requestFocus();
                    },
                  ),
                  TextFieldSimple(
                    title: 'Gender',
                    controller: genderController,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: genderFocusNode,
                    onFieldSubmitted: (s) {
                      genderFocusNode.unfocus();
                      phoneCallFocusNode.requestFocus();
                    },
                  ),
                  TextFieldSimple(
                    title: 'Phone number',
                    controller: phoneCallController,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: phoneCallFocusNode,
                    onFieldSubmitted: (s) {
                      phoneCallFocusNode.unfocus();
                      addressFocusNode.requestFocus();
                    },
                  ),
                  TextFieldSimple(
                    title: 'Gender',
                    controller: addressController,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: addressFocusNode,
                    onFieldSubmitted: (s) {
                      addressFocusNode.unfocus();
                    },
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
                      MaterialPageRoute(builder: (context) => AppointmentList()));

                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Get Appointment',
                buttonColor: DesignConfig.buttonColorBlue,
                height: DesignConfig.buttonHeight,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                fontSize: DesignConfig.textFontSize,
              ),
            ),
          ],
        )
      ),
    );
  }
}
