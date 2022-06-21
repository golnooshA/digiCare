import 'package:digi/page/desntist.dart';
import 'package:digi/widget/button_text.dart';
import 'package:digi/widget/form.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'doctorInfo.dart';
import 'menu.dart';

class SendCommnet extends StatefulWidget {
  const SendCommnet({super.key});

  @override
  _SendCommnetState createState() => _SendCommnetState();
}

class _SendCommnetState extends State<SendCommnet> {

  final TextEditingController doctorNameController = TextEditingController();
  final TextEditingController speciallyController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  final FocusNode doctorNameFocusNode = FocusNode();
  final FocusNode speciallyFocusNode = FocusNode();
  final FocusNode locationFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My Commnet',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: DesignConfig.textColor,
                  fontSize: DesignConfig.titleFontSize,
                  fontWeight: FontWeight.w600)),
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
                  TextFieldSimple(
                    title: 'Your Comment',
                    controller: doctorNameController,
                    width: double.infinity,
                    maxLines: 10,
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: doctorNameFocusNode,
                    onFieldSubmitted: (s) {
                      doctorNameFocusNode.unfocus();
                      speciallyFocusNode.requestFocus();
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
                      MaterialPageRoute(builder: (context) => DoctorInformation()));

                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Send Commnet',
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
