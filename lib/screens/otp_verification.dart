// ignore_for_file: avoid_print

import 'package:authentication_ui/common/common.dart';
import 'package:authentication_ui/router/router.dart';
import 'package:authentication_ui/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    size: 35,
                  )),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OTP Verification",
                      style: Common().titelTheme,
                    ),
                    Text(
                      "Enter the verification code we just sent on your email address.",
                      style: Common().mediumThemeblack,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  child: Column(
                    children: [
                      Pinput(
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        validator: (s) {
                          return s == '2222' ? null : 'Pin is incorrect';
                        },
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) {
                          print(pin);
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomElevatedButton(
                        message: "Verify",
                        function: () {
                          GoRouter.of(context)
                              .pushNamed(Routers.newpassword.name);
                        },
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: Common().hinttext,
                    ),
                    TextButton(
                        onPressed: () {
                          GoRouter.of(context)
                              .pushNamed(Routers.signuppage.name);
                        },
                        child: Text(
                          "Register Now",
                          style: Common().mediumTheme,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
