import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_final_project/views/nav_bar_screens/profile.dart';
import 'package:iti_final_project/views/nav_bar_screens/settings_screens/about.dart';
import 'package:iti_final_project/views/nav_bar_screens/settings_screens/developer.dart';
import 'package:iti_final_project/views/nav_bar_screens/settings_screens/privacy.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Settings",
                  style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Color(0xff283061),
                    fontFamily: GoogleFonts.rubik().fontFamily,
                  ),),
                SizedBox(height: 50,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19272246),
                                      blurRadius: 15,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  foregroundColor: Color(0xff283061),
                                  child: Icon(
                                    Icons.person,
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.9,
                                  color: Color(0xff283061),
                                  fontFamily: GoogleFonts.quicksand().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined, size: 17),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19272246),
                                      blurRadius: 15,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  foregroundColor: Color(0xff283061),
                                  child: Icon(
                                    Icons.privacy_tip_sharp,
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.9,
                                  color: Color(0xff283061),
                                  fontFamily: GoogleFonts.quicksand().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined, size: 17),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Developer()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19272246),
                                      blurRadius: 15,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  foregroundColor: Color(0xff283061),
                                  child: Icon(
                                    Icons.developer_mode,
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Developer",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.9,
                                  color: Color(0xff283061),
                                  fontFamily: GoogleFonts.quicksand().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined, size: 17),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19272246),
                                      blurRadius: 15,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  foregroundColor: Color(0xff283061),
                                  child: Icon(
                                    Icons.my_library_books,
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "About",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.9,
                                  color: Color(0xff283061),
                                  fontFamily: GoogleFonts.quicksand().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined, size: 17),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
