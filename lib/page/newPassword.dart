import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import '../widget/form.dart';
import 'signIn.dart';

class NewPassword extends StatelessWidget {

  final TextEditingController newpassController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode newpassFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:SingleChildScrollView(
          reverse: true,
          controller: ScrollController(),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
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
                title: 'New Password',
                controller: newpassController,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                borderRadius: BorderRadius.circular(0),
                focusNode: newpassFocusNode,
                onFieldSubmitted: (s) {
                  newpassFocusNode.unfocus();
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
                onTap: () {
                  print('snack bar');
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Send recover password for your email"),
                  ));

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),);
                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Change Password',
                buttonColor: DesignConfig.buttonColorBlue,
                height: DesignConfig.buttonHeight,
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                fontSize: DesignConfig.textFontSize,
              )
            ],
          ),
        ),
      ),
    );
  }
}
