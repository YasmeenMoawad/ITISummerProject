import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_final_project/views/login.dart';
import 'package:iti_final_project/views/nav_bar_screens/last_transaction.dart';
import 'package:iti_final_project/views/nav_bar_screens/nav_bar.dart';
import 'package:iti_final_project/views/on_boarding_screens.dart';
import 'package:iti_final_project/views/register.dart';
import 'package:iti_final_project/views/splash_screen.dart';
import 'package:iti_final_project/views/nav_bar_screens/wallet_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  MaterialColor getMaterialColor() {
    int colorValue = 0xffFAFAFA;
    Color color = Color.fromRGBO(20, 23, 43, 0.5);
    Map<int, Color> shades = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900]
        .asMap()
        .map((key, value) => MapEntry(value, color.withOpacity(1 - (1 - (key + 1) / 10))));
    return MaterialColor(colorValue, shades);
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: getMaterialColor(),
      ),
      home: SplashScreen(),
    );
  }
}
