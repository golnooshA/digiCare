import 'package:digi/page/desntist.dart';
import 'package:digi/page/result.dart';
import 'package:digi/widget/button_text.dart';
import 'package:digi/widget/form.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

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
          title: const Text('Search',
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
                    title: 'Name of doctor',
                    controller: doctorNameController,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: doctorNameFocusNode,
                    onFieldSubmitted: (s) {
                      doctorNameFocusNode.unfocus();
                      speciallyFocusNode.requestFocus();
                    },
                  ),
                  TextFieldSimple(
                    title: 'Specially',
                    controller: speciallyController,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: speciallyFocusNode,
                    onFieldSubmitted: (s) {
                      // speciallyFocusNode.unfocus();
                      // locationFocusNode.requestFocus();
                    },
                  ),
                  TextFieldSimple(
                    title: 'Location',
                    controller: locationController,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    borderRadius: BorderRadius.circular(0),
                    focusNode: locationFocusNode,
                    onFieldSubmitted: (s) {
                      locationFocusNode.unfocus();
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
                      MaterialPageRoute(builder: (context) => Result()));

                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Search',
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
