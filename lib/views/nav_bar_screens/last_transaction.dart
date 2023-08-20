import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';


class LastTransaction extends StatefulWidget {
  const LastTransaction({Key? key}) : super(key: key);

  @override
  State<LastTransaction> createState() => _LastTransactionState();
}

class _LastTransactionState extends State<LastTransaction> {


  @override
  Widget build(BuildContext context) {

    List<String> appsImages = [
      "assets/images/instapay.png",
      "assets/images/netflix.png",
      "assets/images/paypal.png",
    ];
    List<Color> colors = [
      Colors.orangeAccent.shade100,
      Colors.black87,
      Colors.lightBlueAccent,
    ];
    List<Color> bgColor = [
      Colors.transparent,
      Colors.black87,
      Colors.transparent,
    ];
    //FirebaseFirestore firestore = FirebaseFirestore.instance;
    var apps = FirebaseFirestore.instance.collection('lastTransactionApp');

    return StreamBuilder<QuerySnapshot>(
            stream: apps.snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (context, index) {
                      var doc = snapshot.data!.docs[index];
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48,
                                    height: 48,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: colors[index],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),),
                                    child: CircleAvatar(radius: 25,
                                      backgroundImage: AssetImage(appsImages[index]),
                                      backgroundColor: bgColor[index],
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${doc['name']}",
                                        style: TextStyle(
                                          fontSize: 18,fontWeight: FontWeight.bold,
                                          color: const Color(0xff283061),
                                          fontFamily: GoogleFonts.rubik().fontFamily,
                                        ),),
                                      Text("${doc['type']}",
                                        style: TextStyle(
                                          fontSize: 13,fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade500,
                                          fontFamily: GoogleFonts.quicksand().fontFamily,
                                        ),),
                                    ],
                                  ),
                                ],
                              ),
                              Text("\$${doc['amount']}",
                                style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.w600,
                                  color: const Color(0xff283061),
                                  fontFamily: GoogleFonts.quicksand().fontFamily,
                                ),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                        ],
                      );
                    });
            }
        );
  }
}
