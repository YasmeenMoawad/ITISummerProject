import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_outlined,size: 35,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage("https://s3-alpha-sig.figma.com/img/4caa/e09d/6b99f051a7078205b591015781d895d2?Expires=1693180800&Signature=XEfDs80wew4nC4EvWTOWco5XhMRZkJYfmIGFHCvdkTltQ9whe1eyWrCmPnvDGgSf8P02eVK~Xzwba-aoFGdXIUev6VbWZm0Wm6MAnQZJqZEBEYFEVOeOD-MXCTM80vvN~DWHiuLbfQRC6xOg6Fe9DzVd7C6UBYwqekkXf50Okb1mxlh42lXa47WVVPowRchvYH7RoQsFasRaYncRqwLG9CX33JcynVXhe8N2BTQR1qtvwQrBz3YuyWkhpTefNPDb1D5fQCCBZcKxP7HHT786gRYS8RPnXaAVrRY-zrL9YVj1qVqoRcxibwnB1bUtF8BUgKQaTwb~iyM8gQP0R3tyHQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                    maxRadius: 60,
                  ),
                  ClipRect(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      heightFactor: 0.5,
                      child: Container(height: 60,width: 120,
                        alignment: const Alignment(0,0.5),
                          decoration: BoxDecoration(
                          color: const Color(0xff283061).withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: const Text("        change        ",
                          style: TextStyle(color: Colors.white,),),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mohamed",
                    style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold,
                      color: const Color(0xff283061),
                      fontFamily: GoogleFonts.rubik().fontFamily,
                    ),),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.edit_outlined,color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name ",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("Email ",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("Gender ",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("Age ",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xFFBDBDBD),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("ID ",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
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
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("Mohamed@gmail.com",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("Male",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("21",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
                          color: const Color(0xff283061),
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      const SizedBox(height: 30,),
                      Text("3567931",
                        style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900,
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
