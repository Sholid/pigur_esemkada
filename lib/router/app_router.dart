import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_prjct/pages/addguru.dart';
import 'package:flutter_app_prjct/pages/admin/home_admin.dart';
import 'package:flutter_app_prjct/pages/login/login_page.dart';
//import 'package:flutter_app_prjct/pages/registerasi.dart';
import 'package:flutter_app_prjct/pages/splash/page.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    SplashPage.route: (context) => const SplashPage(),
    LoginPage.route: (context) => const LoginPage(),
    Guru.route: (context) => const Guru(),
    Admin.route: (context) => const Admin(),
  };
}
