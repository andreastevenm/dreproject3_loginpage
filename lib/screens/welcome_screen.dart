import 'package:dreproject3_loginpage/screens/signin_screen.dart';
import 'package:dreproject3_loginpage/screens/signup_screen.dart';
import 'package:dreproject3_loginpage/widgets/custom_scaffold.dart';
import 'package:dreproject3_loginpage/widgets/welcome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Image.asset(
                            'assets/images/dreSlogo-final.png',
                            height: 600, // adjust as needed
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SigninScreen(),
                      color: Colors.transparent,
                      textColor: Colors.black,
                    ),
                  ),

                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: SignupScreen(),
                      color: Colors.blueGrey,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
