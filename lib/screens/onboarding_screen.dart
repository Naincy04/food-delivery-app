import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Lottie.asset('lottie/delivery-boy.json', width: 100, height: 200),
            const Text("Welcome Foodies"),
          ],
        ),
      ),
    );
  }
}
