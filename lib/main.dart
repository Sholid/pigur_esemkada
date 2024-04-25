import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/pages/splash/page.dart';
import 'package:flutter_app_prjct/router/app_router.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guru Piket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            gapPadding: 0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, background: Colors.white),
      ),
      initialRoute: SplashPage.route,
      routes: AppRouter.routes,
    );
  }
}
