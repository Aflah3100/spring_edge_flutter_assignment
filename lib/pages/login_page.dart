import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImage), fit: BoxFit.fitWidth)),
        child: Row(
          children: [
            //Left-side-image
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
            ),

            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //App-logo&name
                  Row(
                    children: [
                      Image.asset(logoImage),
                      const SizedBox(
                        width: 10,
                      ),
                      GradientText(
                          text: 'DEMO',
                          style: GoogleFonts.righteous(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                          gradient: const LinearGradient(
                              colors: [Color(0xff35A6D6), Color(0xff435B83)]))
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //Login-container
                  const LoginContainer(),
                  const Spacer(),

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
                            fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      elevation: 10,
      child: Container(
        width: 500,
        height: 550,
        padding: const EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[100],
              radius: 40,
              child: Image.asset(logoImage),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Welcome Back',
              style: GoogleFonts.publicSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Text(
              'We are glad to see you',
              style: GoogleFonts.publicSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff666666)),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 450,
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Username',
                    hintStyle: GoogleFonts.publicSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff666666))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 450,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.publicSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff666666))),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            //Login-button
            InkWell(
              onTap: () {},
              child: Container(
                width: 450,
                height: 48,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xff35A7D7), Color(0xff445A82)]),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.publicSans(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xff445D75)),
                ))
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientText({
    super.key,
    required this.text,
    required this.style,
    required this.gradient,
  });

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
