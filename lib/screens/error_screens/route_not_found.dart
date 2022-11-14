import 'package:flutter/material.dart';

class RouteNotFound extends StatelessWidget {
  final String errorMessage;

  const RouteNotFound({Key? key, required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Page Not Found :( \n $errorMessage",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
