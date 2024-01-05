class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routers {
  static AppRouter authenticationpage = AppRouter(name: "/", path: "/");
  static AppRouter loginpage = AppRouter(name: "/login", path: "/login");
  static AppRouter signuppage = AppRouter(name: "/signip", path: "/signup");
  static AppRouter forgetpassword =
      AppRouter(name: "/forgetpassword", path: "/forgetpassword");
  static AppRouter newpassword =
      AppRouter(name: "/newpassword", path: "/newpassword");
  static AppRouter otpverification =
      AppRouter(name: "/otpverification", path: "/otpverification");
  static AppRouter passwordchanges =
      AppRouter(name: "/passwordchanges", path: "/passwordchanges");
}
