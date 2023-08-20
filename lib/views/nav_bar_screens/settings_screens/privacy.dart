import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

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
        title: Text("Our Privacy Policies: ",
          style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,
            color: Color(0xff283061),
            fontFamily: GoogleFonts.rubik().fontFamily,
          ),),
        elevation: 0,
      ),
      body: SafeArea(
        child: SizedBox(height: 570,
          child: Card(
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
            color: Color(0xff283061),
            elevation: 4,
            margin: EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Text("We understand that privacy is important to you and we will do our best to protect your privacy. \nPlease take a moment to familiarize yourself with our privacy practices and let us know if you have any questions. "
                    "\n \nOur promise to you This Privacy Policy explains how we collect, use, disclose, process and protect the information that you provide to us when you use our products and services. \n \nIf we ask you to provide certain information in order to verify "
                    "your identity when using our products and services, we will use that information strictly in accordance with this Privacy Policy and our User Terms and Conditions."
                    "\n \nThis Privacy Policy is designed with your needs in mind, and it is important that you fully understand of our personal information collection and usage practices, while ensuring that ultimately, you can control your personal information provided to us."
                    "Under this Privacy Policy, 'personal information' refers to the information itself or the data that can identity a specific individual after connecting other information of individuals that we can access. Such personal information includes your phone number and email address.\n \n"
                    "By using our products and services, it means that you have read this privacy policy statement and consent to our privacy practices as described in this statement, including any changes we may make at any time. We are committed to protecting the privacy, "
                    "confidentiality and security of your personal information by complying with applicable law including the data protection laws in your region. At the same time, we are committed to ensuring that all our employees and agents to fulfill these obligations."
                    "\n \nUltimately, what we want is the best for all our users. \nIf you have any questions about our data handling practices as summarized in this Privacy Policy, please contact us via yasmeenmwd@gmail.com \nto address your specific concerns. We will be happy to help you.",
                  style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: GoogleFonts.quicksand().fontFamily,
                  ),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
