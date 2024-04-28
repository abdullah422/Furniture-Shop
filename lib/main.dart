
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/core/utils/app_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: kScaffoldColor,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: kScaffoldColor,
      statusBarColor: kScaffoldColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: kScaffoldColor,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              systemNavigationBarColor: kScaffoldColor,
              systemNavigationBarIconBrightness: Brightness.dark,
              systemNavigationBarDividerColor: kScaffoldColor,
              statusBarColor: kScaffoldColor,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark),
        ),
      ),
    );
  }
}
