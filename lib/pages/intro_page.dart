import 'package:cloth_grisl_app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "lib/images/n-1.png",
              fit: BoxFit.cover,
              width: 60,
            ),
          ),
          // White Bottom Container
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(170),
                ),
              ),
            ),
          ),
          Positioned(
              top: 390,
              left: 90,
              child: Text(
                " Welcom coffee shope",
                style: GoogleFonts.aBeeZee(
                  fontSize: 23,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Positioned(
              top: 480,
              left: 80,
              child: Text(
                "coffee, beverage brewed\nroasted and ground seeds\n of the tropical evergreen \n plants of African origin",
                style: GoogleFonts.aBeeZee(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              )),
          // Text Widget
          Positioned(
            bottom: 40, // Adjust position
            left: 90,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(83),
                      topLeft: Radius.circular(123)),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(83),
                      topRight: Radius.circular(123)),
                  border: Border.all(color: Colors.white),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 18),
                child: Text("Getsrat",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 20,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
