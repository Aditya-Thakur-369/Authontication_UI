import 'package:authentication_ui/router/router.dart';
import 'package:authentication_ui/screens/authentication_ui.dart';
import 'package:authentication_ui/screens/forget_password.dart';
import 'package:authentication_ui/screens/login_page.dart';
import 'package:authentication_ui/screens/new_password.dart';
import 'package:authentication_ui/screens/otp_verification.dart';
import 'package:authentication_ui/screens/password_changed.dart';
import 'package:authentication_ui/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routers.authenticationpage.path,
    name: Routers.authenticationpage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: AuthenticationUI());
    },
  ),
  GoRoute(
    path: Routers.loginpage.path,
    name: Routers.loginpage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: LoginPage());
    },
  ),
  GoRoute(
    path: Routers.signuppage.path,
    name: Routers.signuppage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: SignupPage());
    },
  ),
  GoRoute(
    path: Routers.forgetpassword.path,
    name: Routers.forgetpassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: ForgetPasswordPage());
    },
  ),
  GoRoute(
    path: Routers.newpassword.path,
    name: Routers.newpassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: NewPasswordPage());
    },
  ),
  GoRoute(
    path: Routers.otpverification.path,
    name: Routers.otpverification.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: OtpVerificationPage());
    },
  ),
  GoRoute(
    path: Routers.passwordchanges.path,
    name: Routers.passwordchanges.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: PasswordChangesPage());
    },
  )
]);
