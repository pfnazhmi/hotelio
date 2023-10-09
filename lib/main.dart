import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelio/config/app_color.dart';
import 'package:hotelio/config/app_route.dart';
import 'package:hotelio/config/session.dart';
import 'package:hotelio/model/user.dart';
import 'package:hotelio/page/home_page.dart';
import 'package:hotelio/page/splash.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  initializeDateFormatting('en_US');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          scaffoldBackgroundColor: AppColor.backgroundScaffold,
          primaryColor: AppColor.primary,
          colorScheme: const ColorScheme.light(
            primary: AppColor.primary,
            secondary: AppColor.secondary,
          )),
      routes: {
        '/': (context) {
          return FutureBuilder(
              future: Session.getUser(User()),
              builder: (context, AsyncSnapshot<User> snapshot) {
                if (snapshot.data == null || snapshot.data!.id == null) {
                  return const SplashPage();
                } else {
                  return const HomePage();
                }
              });
        },
        AppRoute.splash: (context) => const SplashPage(),
        AppRoute.home: (context) => const HomePage(),
        AppRoute.signin: (context) => const SplashPage(),
        AppRoute.detail: (context) => const SplashPage(),
        AppRoute.checkout: (context) => const SplashPage(),
        AppRoute.checkoutSuccess: (context) => const SplashPage(),
        AppRoute.detailBooking: (context) => const SplashPage(),
      },
    );
  }
}
