import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:spring_edge_flutter_assignment/constants/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    return ScreenTypeLayout.builder(
      desktop: (ctx) => DesktopView(),
    );
  }

  Widget DesktopView() {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImage), fit: BoxFit.fitWidth)),
        child: Row(
          children: [
            SizedBox(
              width: screenWidth! * 0.4,
              child: Stack(
                children: [
                  Image.asset(boatImage),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Explore Demo Limited\'s Premier Logistics\nand Freight Services',
                        style: GoogleFonts.publicSans(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
