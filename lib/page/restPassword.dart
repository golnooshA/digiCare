import 'package:digi/page/newPassword.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import '../widget/form.dart';


class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();

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
            children: [
              Container(
                width: double.infinity,
                height: 150,
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
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: const Text(
                    "Enter your email address and we will send you a password reset link.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: DesignConfig.textColor,
                        fontSize: DesignConfig.textFontSize,
                        fontWeight: FontWeight.w600)),
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
                    MaterialPageRoute(builder: (context) => NewPassword()));
                },
                textColor: DesignConfig.buttonTextColor,
                minWidth: double.infinity,
                text: 'Send password reset email',
                buttonColor: DesignConfig.buttonColorBlue,
                height: DesignConfig.buttonHeight,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                fontSize: DesignConfig.textFontSize,
              )
            ],
          ),
        ),
      ),
    );
  }
}
