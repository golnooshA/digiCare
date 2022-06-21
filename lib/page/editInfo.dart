// ignore_for_file: library_private_types_in_public_api

import 'package:digi/page/userInfo.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../core/design_config.dart';
import '../widget/form.dart';
import 'menu.dart';
import 'dart:io';


class EditInformation extends StatefulWidget {
  const EditInformation({super.key});

  @override
  _EditInformationState createState() => _EditInformationState();
}

class _EditInformationState extends State<EditInformation> {

  late File imageFile;

  @override
  Widget build(BuildContext context) {

    final TextEditingController nameController = TextEditingController();
    final TextEditingController surnameController = TextEditingController();
    final TextEditingController birthdayController = TextEditingController();
    final TextEditingController genderController = TextEditingController();
    final TextEditingController phoneCallController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController bloodTypeController = TextEditingController();
    final TextEditingController hereditaryDiseaseController = TextEditingController();
    final TextEditingController diseaseSpecialController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController wheelchairController = TextEditingController();

    final FocusNode nameFocusNode = FocusNode();
    final FocusNode surnameFocusNode = FocusNode();
    final FocusNode birthdayFocusNode = FocusNode();
    final FocusNode genderFocusNode = FocusNode();
    final FocusNode phoneCallFocusNode = FocusNode();
    final FocusNode addressFocusNode = FocusNode();
    final FocusNode bloodTypeFocusNode = FocusNode();
    final FocusNode hereditaryDiseaseFocusNode = FocusNode();
    final FocusNode diseaseSpecialFocusNode = FocusNode();
    final FocusNode emailFocusNode = FocusNode();
    final FocusNode wheelchairFocusNode = FocusNode();

    return MaterialApp(
      home: Scaffold(
        // drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Edit Information',
              textAlign: TextAlign.left,
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
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(30),
                        child: Stack(
                          children: [
                            Image.asset('assets/img1.jpg',
                                fit: BoxFit.cover, width: 120, height: 120),

                            GestureDetector(
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                child: const Icon(
                                  Icons.edit,
                                  color: DesignConfig.callColor,
                                  size: DesignConfig.appBarTextFontSize,
                                ),
                              ),
                              onTap: () {
                                _getFromGallery();
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.only(left: 30, right: 30, top: 12, bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: const Text('Identification Information',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w600)),
                      ),

                      Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: TextFieldSimple(
                              title: 'Name',
                              controller: nameController,
                              width: double.infinity,
                              margin: const EdgeInsets.only(left: 30, right: 12, bottom: 8),
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
                              margin: const EdgeInsets.only(right: 30, left: 12,  bottom: 8),
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
                        title: 'Gender',
                        controller: genderController,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: genderFocusNode,
                        onFieldSubmitted: (s) {
                          genderFocusNode.unfocus();
                          birthdayFocusNode.requestFocus();
                        },
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
                          bloodTypeFocusNode.requestFocus();
                        },
                      ),

                      TextFieldSimple(
                        title: 'Blood Type',
                        controller: bloodTypeController,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: bloodTypeFocusNode,
                        onFieldSubmitted: (s) {
                          bloodTypeFocusNode.unfocus();
                          wheelchairFocusNode.requestFocus();

                        },
                      ),

                      Container(
                        margin:
                        const EdgeInsets.only(left: 30, right: 30,top: 30, bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: const Text('Health information',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w600)),
                      ),

                      TextFieldSimple(
                        title: 'ٌWheelchair',
                        controller: wheelchairController,
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: wheelchairFocusNode,
                        onFieldSubmitted: (s) {
                          wheelchairFocusNode.unfocus();
                          hereditaryDiseaseFocusNode.requestFocus();
                        },
                      ),
                      TextFieldSimple(
                        title: 'Hereditary disease',
                        controller: hereditaryDiseaseController,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: hereditaryDiseaseFocusNode,
                        onFieldSubmitted: (s) {
                          hereditaryDiseaseFocusNode.unfocus();
                          diseaseSpecialFocusNode.requestFocus();
                        },
                      ),
                      TextFieldSimple(
                        title: 'Special disease',
                        controller: diseaseSpecialController,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: diseaseSpecialFocusNode,
                        onFieldSubmitted: (s) {
                          diseaseSpecialFocusNode.unfocus();
                          phoneCallFocusNode.requestFocus();
                        },
                      ),

                      Container(
                        margin:
                        const EdgeInsets.only(left: 30, right: 30,top: 30 , bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: const Text('Contact Information',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: DesignConfig.textColor,
                                fontSize: DesignConfig.textFontSize,
                                fontWeight: FontWeight.w600)),
                      ),

                      TextFieldSimple(
                        title: 'Phone Number',
                        controller: phoneCallController,
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: phoneCallFocusNode,
                        onFieldSubmitted: (s) {
                          phoneCallFocusNode.unfocus();
                          addressFocusNode.requestFocus();
                        },
                      ),

                      TextFieldSimple(
                        title: 'Address',
                        controller: addressController,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: addressFocusNode,
                        onFieldSubmitted: (s) {
                          addressFocusNode.unfocus();
                          emailFocusNode.requestFocus();
                        },
                      ),


                      TextFieldSimple(
                        title: 'Email',
                        controller: emailController,
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 30, right: 30, top: 8, bottom: 30
                        ),
                        borderRadius: BorderRadius.circular(0),
                        focusNode: emailFocusNode,
                        onFieldSubmitted: (s) {
                          emailFocusNode.unfocus();
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserInformation()));

                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Save Changes',
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

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}


