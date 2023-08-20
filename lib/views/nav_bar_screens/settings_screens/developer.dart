import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Developer extends StatelessWidget {
  const Developer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_circle_left_outlined,size: 35,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff283061),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Color(0xff283061),
                ),
                Container(
                  alignment: Alignment(0,0.4),
                  height: 180,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/yasmeenbg.png"),
                    backgroundColor: Colors.brown[300],
                    maxRadius: 60,
                  ),
                ),
              ],
            ),
            Text("Develper Name ",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w900,
                color: Color(0xFFBDBDBD),
                fontFamily: GoogleFonts.quicksand().fontFamily,
              ),),
            Text("Yasmeen Moawad Hafez ",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w900,
                color: Color(0xff283061),
                fontFamily: GoogleFonts.quicksand().fontFamily,
              ),),
          ],
        ),
      ),
    );
  }
}
