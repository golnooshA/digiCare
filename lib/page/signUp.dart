import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import '../widget/form.dart';

class SignUp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode nameFocusNode = FocusNode();

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
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TextFieldSimple(
                title: 'Name',
                controller: nameController,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                borderRadius: BorderRadius.circular(0),
                focusNode: nameFocusNode,
                onFieldSubmitted: (s) {
                  nameFocusNode.unfocus();
                  emailFocusNode.unfocus();
                },
              ),
              TextFieldSimple(
                title: 'Email',
                controller: emailController,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                borderRadius: BorderRadius.circular(0),
                focusNode: emailFocusNode,
                onFieldSubmitted: (s) {
                  emailFocusNode.unfocus();
                  passwordFocusNode.requestFocus();
                },
              ),
              TextFieldSimple(
                title: 'Password',
                controller: passwordController,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                borderRadius: BorderRadius.circular(0),
                focusNode: passwordFocusNode,
                onFieldSubmitted: (s) {
                  passwordFocusNode.unfocus();
                },
              ),
              ButtonText(
                onTap: () {},
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Sign Up',
                buttonColor: DesignConfig.buttonColorDarkBlue,
                height: DesignConfig.buttonHeight,
                margin: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                fontSize: DesignConfig.textFontSize,
              ),
              const Divider(
                color: DesignConfig.textFieldColor,
                height: 2,
                endIndent: 30,
                indent: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: const Text('Or Sign Up with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: DesignConfig.textColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w700)),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: const BoxDecoration(
                      // color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage('assets/gmail.png'),
                        // fit: BoxFit.cover,
                      ),
                    ),
                    child: null /* add child content here */,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      image: DecorationImage(
                        image: AssetImage('assets/facebook.png'),
                        // fit: BoxFit.cover,
                      ),
                    ),
                    child: null /* add child content here */,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      image: DecorationImage(
                        image: AssetImage('assets/twitter.png'),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       margin: const EdgeInsets.only(
              //           left: 30, right: 30, top: 12, bottom: 12),
              //       child: const Text('I have an account?',
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //               color: DesignConfig.buttonColorBlue,
              //               fontSize: DesignConfig.textFontSize,
              //               fontWeight: FontWeight.w600)),
              //     ),
              //     ButtonText(
              //       onTap: () {},
              //       textColor: DesignConfig.buttonColorBlue,
              //       minWidth: double.infinity,
              //       text: 'Sign In',
              //       buttonColor: Colors.transparent,
              //       height: DesignConfig.buttonHeight,
              //       margin: const EdgeInsets.symmetric(horizontal: 30),
              //       fontSize: DesignConfig.textFontSize,
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
