// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:spring_edge_flutter_assignment/constants/constants.dart';
import 'package:spring_edge_flutter_assignment/widgets/login_container_desktop.dart';
import 'package:spring_edge_flutter_assignment/widgets/login_container_mobile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    return ScreenTypeLayout.builder(
      desktop: (ctx) => DesktopView(),
      tablet: (ctx)=> MobileView(),
      mobile: (ctx) => MobileView(),
    );
  }
}

Widget MobileView() {
  return Scaffold(
    body: Container(
      width: screenWidth,
      height: screenHeight,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backgroundImage), fit: BoxFit.fitHeight)),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: screenHeight!),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 50), child: CompanyLogoImage()),
                SizedBox(
                  height: 40,
                ),
                //Login-Container
                LoginContainerMobile()
              ],
            ),
          ),
        ),
      ),
    ),
  );
}



Widget DesktopView() {
  return Scaffold(
    body: Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Left-side-image
            SizedBox(
              width: screenWidth! * 0.4,
              height: screenHeight! * 0.95,
              child: Stack(
                children: [
                  Image.asset(
                    boatImage,
                    fit: BoxFit.fitHeight,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Explore Demo Limited\'s Premier Logistics\nand Freight Services',
                        style: GoogleFonts.publicSans(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //App-logo & name
                    const Padding(
                      padding: EdgeInsets.only(left: 190),
                      child: CompanyLogoImage(),
                    ),

                    const SizedBox(height: 30),

                    //Login-container
                    const LoginContainerDesktop(),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.copyright_rounded,
                          color: Color(0xff666666),
                        ),
                        Text(
                          '2024 DEMO GROUP. All Rights Reserved',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff666666),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class CompanyLogoImage extends StatelessWidget {
  const CompanyLogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(logoImage),
        const SizedBox(width: 10),
        GradientText(
          text: 'DEMO',
          style: GoogleFonts.righteous(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xff35A6D6),
              Color(0xff435B83),
            ],
          ),
        ),
      ],
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.text,
    required this.style,
    required this.gradient,
  });

  final Gradient gradient;
  final TextStyle style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
