import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Card Details",
                style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: const Color(0xff283061),
                  fontFamily: GoogleFonts.rubik().fontFamily,
                ),),
              const SizedBox(height: 30,),
              Image.asset("assets/images/visa.png",height: 230,width: 290,),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name ",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text("Bank ",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text("Account ",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text("Status ",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text("Valid ",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                    ],
                  ),
                  const SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mohamed Yasser",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text("Mabank",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text(".... .... .... 2138",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text("Active",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 10,),
                      Text("2020 - 2025",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w600,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
