import 'package:flutter/material.dart';
import 'package:flutter_proposal_boilerplate/routes/main.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      routes: Routes.routes,
    );
  }
}