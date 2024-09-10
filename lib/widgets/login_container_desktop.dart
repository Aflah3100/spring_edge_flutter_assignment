
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spring_edge_flutter_assignment/constants/constants.dart';

class LoginContainerDesktop extends StatelessWidget {
  const LoginContainerDesktop({
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

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xff445D75)),
        ));
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    );
  }
}