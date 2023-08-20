import 'dart:async';

import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_final_project/views/on_boarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Color myHexColor = const Color(0xff14172b);

  timer() async {
    var duration = const Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const OBS())
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myHexColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 180, width: 250,
                child: Image.asset("assets/images/w.png")),
            Text("Mabank Wallet",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w900,
                color: Colors.white30,
                fontFamily: GoogleFonts.quicksand().fontFamily,
              ),),
            const SizedBox(height: 60,),
            const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            ),
          ],
        ),
      ),
    );
  }
}