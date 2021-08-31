import 'package:flutter_proposal_boilerplate/routes/main.dart';

import '../../constants/core.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacementNamed(
          context,
         Routes.home,
        ));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear,
        ),
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}