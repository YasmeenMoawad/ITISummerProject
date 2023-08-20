import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_circle_left_outlined,size: 35,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("About",
          style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,
            color: Color(0xff283061),
            fontFamily: GoogleFonts.rubik().fontFamily,
          ),),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.phone_iphone),
                SizedBox(width: 10,),
                Text("About Mabank Application",
                  style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w900,
                    color: Color(0xFFBDBDBD),
                    fontFamily: GoogleFonts.quicksand().fontFamily,
                  ),),
              ],
            ),
            SizedBox(height: 30,),
            Text("A MABANK App is a digital application that allows users to store,"
                " manage and use their payment information for transactions on their mobile"
                " device. This app essentially turns a mobile device into a digital wallet, "
                "allowing users to securely store their credit/debit card information, "
                "bank account details, and other payment methods. "
                "providing a convenient and secure way for users to manage their financial transactions."
                "\n \nMABANK is designed to digitalize your credit cards, "
                "debit cards, loyalty cards, passes, tickets, coupons, and gift cards in "
                "one place. They allow you to control all your payments, transactions, and keep "
                "tracking the whole process and insights. ",
              style: TextStyle(
                fontSize: 15,fontWeight: FontWeight.w900,
                color: Color(0xFFBDBDBD),
                fontFamily: GoogleFonts.quicksand().fontFamily,
              ),),
          ],
        ),
      ),
    );
  }
}
