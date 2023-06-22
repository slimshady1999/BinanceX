import "package:flutter/material.dart";

import '../accounts/registerpage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181a20),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
                opacity: 0.4,
                image: AssetImage("images/airdrop2.png"))),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child:
                  Image.asset("images/Binance12.png", height: 66, width: 120),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: MediaQuery.of(context).size.height / 2.10,
                  width: MediaQuery.of(context).size.width / 1.35,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/airdrop1.png",
                          height: 100, width: 200),
                      const Text("BinanceX Airdrops",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: "Poppins-Regular")),
                      const Padding(
                        padding: EdgeInsets.only(left: 9.0, top: 10),
                        child: Text("Get 150% USDT On Every",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: "Poppins-Regular")),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text("BinanceX Deposits..",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: "Poppins-Regular")),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: 160,
                        child: Material(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()),
                                  (route) => false);
                            },
                            child: const Center(
                              child: Text("Claim Airdrop",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontFamily: "Poppins-Regular")),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text("Easy, Instant, 0 Fee!",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: "Poppins-Regular")),
                      ),
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }
}

/* Stack(
          children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images/Binance12.png", height: 65, width: 120),
                  ],
                ),
                const SizedBox(height: 30),
                Image.asset(
                  "images/airdrop1.png",
                ),
                const SizedBox(height: 20),
                const Text("BinanceX",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFfcd535),
                        fontFamily: "RubikVinyl-Regular")),
                const Text("AirDrops",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: "RubikVinyl-Regular")),
                const SizedBox(height: 80),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text("GET 150% ON EVERY BINANCEX DEPOSITS..",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFFfcd535),
                          fontFamily: "RubikVinyl-Regular")),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 75,
                    width: 200,
                    child: Material(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: const Center(
                          child: Text("Claim Airdrop",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  fontFamily: "Poppins-Regular")),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]), */