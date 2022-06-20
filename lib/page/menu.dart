import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import '../widget/form.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              topRight: Radius.circular(100))),
      child: SizedBox(
        width: 200,
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Expanded(
                  flex: 8,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text('Home',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text('User Information',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text(
                              'Medical Document',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text(
                              'Pill Reminder',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text(
                              'Doctors List',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text(
                              'Appointment List',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text( 'Chats',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text( 'About Us',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Container(
                          margin:
                          const EdgeInsets.only(left: 12),
                          child: const Text( 'Log Out',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: DesignConfig.textFontSize,
                                color: DesignConfig.titleColor,
                              )),
                        ),
                        // contentPadding: EdgeInsets.all(4),
                        onTap: () {},
                      ),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  margin:
                      const EdgeInsets.only(bottom: 30, left: 12),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
