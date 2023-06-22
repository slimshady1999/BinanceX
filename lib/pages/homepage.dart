import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181a20),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181a20),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/cryptocurrency1.png"),
          )
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
