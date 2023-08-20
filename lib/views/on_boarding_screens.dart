import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_final_project/views/register.dart';

class OBS extends StatelessWidget {
  const OBS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<PageViewModel> pages = [
      PageViewModel(
        title: "We are into automating\nMicrofinance in World",
        body: "",
        footer: Container(margin: const EdgeInsets.symmetric(horizontal: 20,),
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              elevation: 3,
              //backgroundColor: Color(0xFF5B259F),
              backgroundColor: const Color(0xff283061),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),),
            ),
            child: const Text("Let's Go!",style: TextStyle(color: Colors.white),),
          ),
        ),
        image: Center(heightFactor: 300,widthFactor: 300,child: Image.asset("assets/images/people.png"),),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,
          fontFamily: GoogleFonts.quicksand().fontFamily,
          ),
          bodyFlex: 0,
          footerFlex: 0,
          bodyAlignment: Alignment.center,
        ),
      ),
      PageViewModel(
        title: "Paynow is a Microfinance\nbusiness  Software",
        bodyWidget: Text("Welcome to Mabank Wallet",style: TextStyle(
          fontSize: 15,fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        ),
        footer: Container(margin: const EdgeInsets.symmetric(horizontal: 20,),
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              elevation: 3,
              backgroundColor: const Color(0xFF283061),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),),
            ),
            child: const Text("Let's Go!",style: TextStyle(color: Colors.white),),
          ),
        ),

        image: Center(child: Image.asset("assets/images/wallet.png",)),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,
            fontFamily: GoogleFonts.quicksand().fontFamily,
          ),
          bodyFlex: 0,
          footerFlex: 0,
          bodyAlignment: Alignment.center,
        ),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: IntroductionScreen(
            pages: pages,
            dotsDecorator: const DotsDecorator(
              size: Size(10,10),
              color: Colors.grey,
              activeSize: Size.square(15),
              activeColor: Color(0xFF283061),
            ),
            showDoneButton: true,
            done: Text("Done",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,
              color: const Color(0xFF283061), fontFamily: GoogleFonts.quicksand().fontFamily,),),
            showSkipButton: true,
            skip: Text("Skip",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,
              color: const Color(0xFF283061),fontFamily: GoogleFonts.quicksand().fontFamily,),),
            showNextButton: true,
            next: const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color(0xFF283061),),
            curve: Curves.bounceOut,
            onDone: () => onDone(context),
          ),
        ),
      ),
    );
  }
}
void onDone(context){
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => const Register()));
}