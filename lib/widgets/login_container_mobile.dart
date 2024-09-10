import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spring_edge_flutter_assignment/constants/constants.dart';
import 'package:spring_edge_flutter_assignment/widgets/login_container_desktop.dart';

class LoginContainerMobile extends StatelessWidget {
  const LoginContainerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      elevation: 10,
      child: Container(
        width: screenWidth! * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
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
            const LoginButton(),
            const SizedBox(
              height: 10,
            ),
            const ForgotPasswordButton()
          ],
        ),
      ),
    );
  }
}