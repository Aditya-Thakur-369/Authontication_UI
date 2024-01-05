import 'package:authentication_ui/common/common.dart';
import 'package:authentication_ui/router/router.dart';
import 'package:authentication_ui/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class PasswordChangesPage extends StatefulWidget {
  const PasswordChangesPage({super.key});

  @override
  State<PasswordChangesPage> createState() => _PasswordChangesPageState();
}

class _PasswordChangesPageState extends State<PasswordChangesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SafeArea(
        child: Column(
          children: [
            LottieBuilder.asset("assets/images/ticker.json"),
            Text(
              "Password Changed!",
              style: Common().titelTheme,
            ),
            Text(
              "Your password has been changed successfully",
              style: Common().mediumThemeblack,
            ),
            SizedBox(
              height: 30,
            ),
            CustomElevatedButton(
              message: "Back to Login",
              function: () {
                GoRouter.of(context).pushReplacement(Routers.loginpage.name);
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
