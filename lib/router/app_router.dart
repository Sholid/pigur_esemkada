import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_prjct/pages/addguru.dart';
import 'package:flutter_app_prjct/pages/admin/atur_jadwal_piket_screen.dart';
import 'package:flutter_app_prjct/pages/admin/detail_inspeksi_screen.dart';
import 'package:flutter_app_prjct/pages/admin/home_admin.dart';
import 'package:flutter_app_prjct/pages/login/login_page.dart';
import 'package:flutter_app_prjct/pages/splash/page.dart';
import 'package:flutter_app_prjct/pages/user/cek_kelas_screen.dart';
import 'package:flutter_app_prjct/pages/user/home_user_screen.dart';
import 'package:flutter_app_prjct/pages/user/inspeksi_kelas_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    SplashPage.route: (context) => const SplashPage(),
    LoginPage.route: (context) => const LoginPage(),
    Guru.route: (context) => const Guru(),
    Admin.route: (context) => const Admin(),
    HomeUserScreen.route: (context) => const HomeUserScreen(),
    CekKelasScreen.route: (context) => const CekKelasScreen(),
    InspeksiKelasScreen.route: (context) => const InspeksiKelasScreen(),
    DetailInspeksiScreen.route: (context) => const DetailInspeksiScreen(),
    AturJadwalPiketScreen.route: (context) => const AturJadwalPiketScreen(),
  };
}
