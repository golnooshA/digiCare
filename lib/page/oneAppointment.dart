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

  // late GoogleMapController myController;
  //
  // final LatLng _center = const LatLng(45.521563, -122.677433);
  //
  // void _onMapCreated(GoogleMapController controller) {
  //   myController = controller;
  // }

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
            onTap: () {},
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
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
                      color: DesignConfig.textColor,
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
                      color: DesignConfig.textColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w600)),
            ),

            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 12, left: 30, right: 30, bottom: 12),
              child: const Text('Address',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: DesignConfig.textColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w600)),
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
