import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utility/app_router.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/splash_feature/presentation/views/splash_view.dart';


void main() {
  runApp(const BooklyApp());

}

class BooklyApp extends StatelessWidget {
   const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme:  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

      routerConfig:AppRouter.router,
    );
  }

}

