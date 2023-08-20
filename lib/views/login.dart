import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_final_project/views/nav_bar_screens/nav_bar.dart';
import 'package:iti_final_project/views/register.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iti_final_project/views/nav_bar_screens/wallet_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  bool isPassVisible = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Welcome back\nto Mabank Wallet",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.bold,
                        color: const Color(0xff283061),
                      fontFamily: GoogleFonts.rubik().fontFamily,
                    ),),
                    const SizedBox(height: 60,),
                    Text(
                      'Sign in with',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFBDBDBD),
                        fontSize: 13,
                        fontFamily: GoogleFonts.quicksand().fontFamily,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.07,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: const [
                               BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 12,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                SizedBox(height: 30,width: 30,
                                    child: SvgPicture.asset("assets/icons/google.svg")),
                                const SizedBox(width: 10,),
                                Text(
                                  'Google',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: GoogleFonts.quicksand().fontFamily,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.08,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          width: 150,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF4367C6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: const [
                               BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 12,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                SizedBox(height: 30,width: 30,
                                    child: SvgPicture.asset("assets/icons/facebook.svg")),
                                const SizedBox(width: 10,),
                                Text(
                                  'Facebook',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                    fontFamily: GoogleFonts.quicksand().fontFamily,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.08,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        prefixIcon: const Icon(Icons.email_sharp),
                        labelText: "Email",
                        labelStyle: TextStyle(fontFamily: GoogleFonts.quicksand().fontFamily,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: password,
                      obscureText: isPassVisible ,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(Icons.lock_outline_sharp),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              isPassVisible = !isPassVisible;
                            });
                          },
                          icon: Icon(isPassVisible?
                          Icons.visibility_off : Icons.remove_red_eye
                          ),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(fontFamily: GoogleFonts.quicksand().fontFamily,),
                      ),
                    ),
                     const SizedBox(height: 50,),
                    SizedBox(height: 60,width: 180,
                      child: ElevatedButton(
                        onPressed: () async {
                        if(_formKey.currentState!.validate()){
                          try{
                            final credential = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                email: email.text, password: password.text);
                            if (credential.user != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NavBar()),
                              );}
                          }on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                            }
                            SnackBar snackBar = const SnackBar(
                              content: Text("password and email not valid"),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        }
                      },
                        style: ElevatedButton.styleFrom(
                          elevation: 3,
                          backgroundColor: const Color(0xff283061),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                      ),
                      ),
                        child: Text("Login",style: TextStyle(color: Colors.white,
                            fontSize: 18,fontWeight: FontWeight.w700,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                        ),),
                      ),
                    ),
                    const SizedBox(height: 10,),
                     Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account yet? ",
                          style: TextStyle(
                            color: const Color(0xFFBDBDBD),
                            fontSize: 13,
                            fontFamily: GoogleFonts.quicksand().fontFamily,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.07,
                          ),
                        ),
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            color: const Color(0xFF80C2FF),
                            fontSize: 13,
                            fontFamily: GoogleFonts.quicksand().fontFamily,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
