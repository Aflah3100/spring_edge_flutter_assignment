import 'package:flutter/material.dart';
import 'package:spring_edge_flutter_assignment/constants/constants.dart';
import 'package:spring_edge_flutter_assignment/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImage), fit: BoxFit.fitWidth)),
        
      )),
    );
  }
}
