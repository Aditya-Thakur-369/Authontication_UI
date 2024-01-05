import 'package:authentication_ui/common/common.dart';
import 'package:authentication_ui/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 236, 244, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        "Hello! Register to get  ",
                        style: Common().titelTheme,
                      ),
                      Text(
                        "started",
                        style: Common().titelTheme,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    child: Column(
                      children: [
                        const CustomTextFormField(
                          hinttext: 'Username',
                          obsecuretext: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextFormField(
                          hinttext: 'Email',
                          obsecuretext: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextFormField(
                          hinttext: 'Password',
                          obsecuretext: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextFormField(
                          hinttext: 'Confirm password',
                          obsecuretext: false,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomElevatedButton(
                          message: "Register",
                          function: () {},
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "Or Register with",
                          style: Common().semiboldblack,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 30, left: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                  "assets/images/facebook_ic (1).svg"),
                              SvgPicture.asset("assets/images/google_ic-1.svg"),
                              Image.asset("assets/images/Vector.png")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                          onPressed: () {},
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
      ),
    );
  }
}
