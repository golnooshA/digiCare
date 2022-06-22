import 'dart:io';
import 'package:digi/widget/button_text.dart';
import 'package:digi/widget/form.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'package:image_picker/image_picker.dart';


class EditDocument extends StatefulWidget {
  const EditDocument({super.key});

  @override
  _EditDocumentState createState() => _EditDocumentState();
}

class _EditDocumentState extends State<EditDocument> {

  late File imageFile;
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 200,
      maxHeight: 200,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  final TextEditingController documentNameController = TextEditingController();
  final TextEditingController drNameController = TextEditingController();
  final TextEditingController dateDoneController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final FocusNode documentNameFocusNode = FocusNode();
  final FocusNode drNameFocusNode = FocusNode();
  final FocusNode dateDoneFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Edit Document',
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
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    TextFieldSimple(
                      title: 'Document Name',
                      controller: documentNameController,
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, top: 30, bottom: 8),
                      borderRadius: BorderRadius.circular(0),
                      focusNode: documentNameFocusNode,
                      onFieldSubmitted: (s) {
                        documentNameFocusNode.unfocus();
                        drNameFocusNode.requestFocus();
                      },
                    ),
                    TextFieldSimple(
                      title: 'Dr name',
                      controller: drNameController,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 8),
                      borderRadius: BorderRadius.circular(0),
                      focusNode: drNameFocusNode,
                      onFieldSubmitted: (s) {
                        drNameFocusNode.unfocus();
                        dateDoneFocusNode.requestFocus();
                      },
                    ),
                    // TextFieldSimple(
                    //   title: 'Date it done',
                    //   controller: dateDoneController,
                    //   width: double.infinity,
                    //   margin: const EdgeInsets.symmetric(
                    //       horizontal: 30, vertical: 8),
                    //   borderRadius: BorderRadius.circular(0),
                    //   focusNode: dateDoneFocusNode,
                    //   onFieldSubmitted: (s) {
                    //     dateDoneFocusNode.unfocus();
                    //     descriptionFocusNode.requestFocus();
                    //   },
                    // ),
                    TextFieldSimple(
                      title: 'Description',
                      controller: descriptionController,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 8),
                      borderRadius: BorderRadius.circular(0),
                      focusNode: descriptionFocusNode,
                      onFieldSubmitted: (s) {
                        descriptionFocusNode.unfocus();
                      },
                    ),

                    Container(
                      margin:
                      const EdgeInsets.only(
                          left: 30, right: 30, top: 30, bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: const Text('Upload File',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: DesignConfig.textColor,
                              fontSize: DesignConfig.textFontSize,
                              fontWeight: FontWeight.w600)),
                    ),
                    Container(
                      width: double.infinity,
                      margin:
                      const EdgeInsets.only(
                          left: 30, right: 30, top: 8, bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: MaterialButton(onPressed: (){
                        _getFromGallery();
                      }
                          ,
                          color: Colors.white70,
                          minWidth: 80,
                          height: 80,
                          child: const Icon(Icons.add, size: 40,
                              color: DesignConfig.textColor)),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ButtonText(
                  onTap: () {},
                  textColor: DesignConfig.buttonTextColor,
                  minWidth: double.infinity,
                  text: 'Set Changes',
                  buttonColor: DesignConfig.buttonColorBlue,
                  height: DesignConfig.buttonHeight,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 30),
                  fontSize: DesignConfig.textFontSize,
                ),
              ),
            ],
          )
      ),
    );
  }
}