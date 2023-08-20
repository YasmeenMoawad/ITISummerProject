import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'last_transaction.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Wallet",
                        style: TextStyle(
                          fontSize: 28,fontWeight: FontWeight.bold,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.rubik().fontFamily,
                        ),),
                      Text(" Active",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                    ],
                  ),
                  const CircleAvatar(maxRadius: 27,
                    backgroundImage: NetworkImage("https://s3-alpha-sig.figma.com/img/4caa/e09d/6b99f051a7078205b591015781d895d2?Expires=1693180800&Signature=XEfDs80wew4nC4EvWTOWco5XhMRZkJYfmIGFHCvdkTltQ9whe1eyWrCmPnvDGgSf8P02eVK~Xzwba-aoFGdXIUev6VbWZm0Wm6MAnQZJqZEBEYFEVOeOD-MXCTM80vvN~DWHiuLbfQRC6xOg6Fe9DzVd7C6UBYwqekkXf50Okb1mxlh42lXa47WVVPowRchvYH7RoQsFasRaYncRqwLG9CX33JcynVXhe8N2BTQR1qtvwQrBz3YuyWkhpTefNPDb1D5fQCCBZcKxP7HHT786gRYS8RPnXaAVrRY-zrL9YVj1qVqoRcxibwnB1bUtF8BUgKQaTwb~iyM8gQP0R3tyHQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  ),
                ],
              ),
              const SizedBox(height: 28,),
              Stack(
                alignment: const AlignmentDirectional(-1,-1.8),
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    width: 310,
                    height: 140,
                    decoration: ShapeDecoration(
                      color: const Color(0xff283061),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Balance",
                              style: TextStyle(
                                fontSize: 15,fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                              ),),
                            const SizedBox(height: 5,),
                            Text("\$ 2350.5",
                              style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.5,
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                              ),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Card",
                              style: TextStyle(
                                fontSize: 15,fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                              ),),
                            const SizedBox(height: 5,),
                            Text("Mabank",
                              style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.5,
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                              ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70,width: 70,
                      child: Image.asset("assets/images/wlt.png")),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19272246),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const CircleAvatar(radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/images/convert.png"),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text("Transfer",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue.shade500,fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19272246),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const CircleAvatar(radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/images/export.png"),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text("Payment",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue.shade500,fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19272246),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const CircleAvatar(radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/images/money-send.png"),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text("Payout",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue.shade500,fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19272246),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const CircleAvatar(radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/images/add-circle.png"),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text("Top up",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue.shade500,fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Last Transaction",
                    style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold,
                      color: const Color(0xff283061),
                      fontFamily: GoogleFonts.rubik().fontFamily,
                    ),),
                  Text("View All",
                    style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,
                      color: Colors.blue.shade500,
                      fontFamily: GoogleFonts.quicksand().fontFamily,
                    ),),
                ],
              ),
              const SizedBox(height: 8,),
              SizedBox(height: 155,width: double.infinity,
                child: Builder(builder:(BuildContext context){
                  return const LastTransaction();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
