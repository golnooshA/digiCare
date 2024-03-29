import 'package:digi/page/signUp.dart';
import 'package:digi/widget/button_text.dart';
import 'package:flutter/material.dart';
import '../core/design_config.dart';
import '../widget/form.dart';
import 'homepage.dart';
import 'restPassword.dart';

class SignIn extends StatelessWidget {

  SignIn({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 150,
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
              onTap: () {
                // final snackBar = SnackBar(
                //   content: Text('Hello! I am a SnackBar!'),
                //   duration: Duration(seconds: 5),
                //   action: SnackBarAction(
                //     label: 'Undo',
                //     onPressed: () {
                //       // Some code to undo the change.
                //     },
                //   ),
                // );
                //
                // // Find the Scaffold in the widget tree and use
                // // it to show a SnackBar.
                // Scaffold.of(context).showSnackBar(snackBar);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),);

              },
              textColor: DesignConfig.buttonTextColor,
              minWidth: double.infinity,
              text: 'Sign In',
              buttonColor: DesignConfig.buttonColorDarkBlue,
              height: DesignConfig.buttonHeight,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
              fontSize: DesignConfig.textFontSize,
            ),
            ButtonText(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResetPassword()),);

              },
              textColor: DesignConfig.buttonColorBlue,
              minWidth: double.infinity,
              text: 'Forgot my password',
              buttonColor: Colors.transparent,
              height: DesignConfig.buttonHeight,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              fontSize: DesignConfig.textFontSize,
            ),
            const Divider(
              color: DesignConfig.textColor,
              height: 2,
              endIndent: 30,
              indent: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Text('Or Sign In with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: DesignConfig.textColor,
                      fontSize: DesignConfig.textFontSize,
                      fontWeight: FontWeight.w500)),
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
            ButtonText(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()));

              },
              textColor: DesignConfig.buttonColorBlue,
              minWidth: double.infinity,
              text: 'Dont have an account? Sign Up',
              buttonColor: Colors.transparent,
              height: DesignConfig.buttonHeight,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              fontSize: DesignConfig.textFontSize,
            ),
          ],
        ),
      ),
    );
  }
}
