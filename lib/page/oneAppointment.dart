import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'dart:async';
// ignore_for_file: library_private_types_in_public_api

class OneAppointment extends StatefulWidget {
  const OneAppointment({Key? key}) : super(key: key);

  @override
  _OneAppointmentState createState() => _OneAppointmentState();
}

class _OneAppointmentState extends State<OneAppointment> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 8),
              child:  Image.asset('assets/img8.jpg',
                  fit: BoxFit.cover, width: 120, height: 120),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,

                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 30, left: 30, right: 12, bottom: 12),
                    child: const Text('Dr.Sara Gonzalez',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: DesignConfig.textColor,
                            fontSize: DesignConfig.appBarTextFontSize,
                            fontWeight: FontWeight.w600)),
                  ),
                ),

                // Expanded(
                //   flex: 1,
                //   child: Container(
                //     width: double.infinity,
                //     alignment: Alignment.centerRight,
                //     margin: const EdgeInsets.only(top: 30, left: 12, right: 30, bottom: 12),
                //     child: const Icon( Icons.delete,
                //       color: DesignConfig.rateColor,
                //       size: DesignConfig.coverButtonHeight),
                //   ),
                // ),
              ],
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 12, left: 30, right: 30, bottom: 12),
              child: const Text('Pediatrician',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: DesignConfig.textFieldColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w400)),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 12, left: 30, right: 30, bottom: 12),
              child: const Text('May 9, 2022 - 15:45 ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: DesignConfig.rateColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w600)),
            ),

            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 12, left: 30, right: 30, bottom: 12),
              child: const Text('Ephraim Ovitsh, MD, PC 200 West 20th St New York, NY 10011',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: DesignConfig.textColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w500)),
            ),

            // Container(
            //   width: double.infinity,
            //   height: 100,
            //   margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            //   child: GoogleMap(
            //     onMapCreated: _onMapCreated,
            //     initialCameraPosition: CameraPosition(
            //       target: _center,
            //       zoom: 10.0,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

}
