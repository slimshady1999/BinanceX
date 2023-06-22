import 'package:flutter/material.dart';

import 'intropage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const IntroPage()),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: const Color(0xFF181a20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/binance.png"),
          const Text(
            "BinanceX",
            style: TextStyle(
                fontFamily: "Poppins-Regular",
                fontWeight: FontWeight.bold,
                color: Color(0xFFfcd535),
                fontSize: 28),
          )
        ],
      ),
    );
  }
}
