import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_monger/src/features/authentication/screens/dashboard_screen/dashboard_screen.dart';
import 'package:wine_monger/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:wine_monger/src/features/authentication/screens/new_order_screen/create_order_screen.dart';
import 'package:wine_monger/src/features/authentication/screens/order_screen/order_screen.dart';
import 'package:wine_monger/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.montserratTextTheme()),
     
      home: LoginScreen(),
    );
  }
}
