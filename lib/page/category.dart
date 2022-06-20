// ignore_for_file: library_private_types_in_public_api

import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'menu.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Categories',
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
        body: GridView.count(
          scrollDirection: Axis.vertical,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            GestureDetector(
              onTap:(){},
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                child: const Text('Eye',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                padding: const EdgeInsets.all(8),
                child: const Text('Dentist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(

                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                padding: const EdgeInsets.all(8),
                child: const Text('Family',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                padding: const EdgeInsets.all(8),

                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
              child: const Text('Pediatrician',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                padding: const EdgeInsets.all(8),

                child: const Text('Psychologist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                padding: const EdgeInsets.all(8),
                child: const Text('Orthopedist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                padding: const EdgeInsets.all(8),
                child: const Text('Neurologist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                padding: const EdgeInsets.all(8),
                child: const Text('Psychiatrist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            GestureDetector(
              onTap:(){},
              child: Container(
                alignment: Alignment.center,
                color: DesignConfig.darkBlue,
                padding: const EdgeInsets.all(8),
                child: const Text('OB-GYN Nurse',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.coverTextColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
