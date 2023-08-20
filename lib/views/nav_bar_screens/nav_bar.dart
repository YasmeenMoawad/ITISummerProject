import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_final_project/views/nav_bar_screens/credit_card_screen.dart';
import 'package:iti_final_project/views/nav_bar_screens/profile.dart';
import 'package:iti_final_project/views/nav_bar_screens/settings_screens/settings.dart';
import 'package:iti_final_project/views/nav_bar_screens/wallet_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  List<Widget> navScreens = const [
    WalletScreen(),
    CreditCard(),
    Profile(),
    Settings(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: 300,
        height: 70,
        margin:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          color:  const Color(0xff283061),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Expanded(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xff283061),
            currentIndex: currentIndex,
            elevation: 0,
            selectedFontSize: 12,
            showUnselectedLabels: false,
            fixedColor: Colors.white,
            iconSize: 20,
            onTap: (value){
              setState(() {
                currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet,color: Colors.white),label: "Home",),
              BottomNavigationBarItem(icon: Icon(Icons.credit_card,color: Colors.white),label: "Card"),
              BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white),label: "Profile"),
              BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.white),label: "Settings"),

            ],
          ),
        ),
      ),
      body: navScreens[currentIndex],
    );
  }
}
