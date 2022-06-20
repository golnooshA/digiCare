import 'package:digi/page/signIn.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'signUp.dart';

class Start extends StatelessWidget {

  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          reverse: true,
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ButtonText(
                onTap: () {
                  print("Sign in");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SignIn()),);
                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Sign In',
                buttonColor: DesignConfig.buttonColorDarkBlue,
                height: DesignConfig.buttonHeight,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                fontSize: DesignConfig.textFontSize,
              ),
              ButtonText(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                  print("Sign up");
                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Sign Up',
                buttonColor: DesignConfig.buttonColorBlue,
                height: DesignConfig.buttonHeight,
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 4, bottom: 30),
                fontSize: DesignConfig.textFontSize,
              )
            ],
          ),
        ),
      ),
    );
  }
}
