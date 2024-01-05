import 'package:authentication_ui/common/common.dart';
import 'package:authentication_ui/router/router.dart';
import 'package:authentication_ui/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  @override
  Widget build(BuildContext context) {
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
                      "Create new password",
                      style: Common().titelTheme,
                    ),
                    Text(
                      "Your new password must be unique from those previously used.",
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
                      const CustomTextFormField(
                        hinttext: 'New password',
                        obsecuretext: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomTextFormField(
                        hinttext: 'Confirm password',
                        obsecuretext: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomElevatedButton(
                        message: "Reset Password ",
                        function: () {
                          GoRouter.of(context)
                              .pushNamed(Routers.passwordchanges.name);
                        },
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
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
