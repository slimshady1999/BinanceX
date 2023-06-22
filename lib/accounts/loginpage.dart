import 'package:binancex/accounts/registerpage.dart';
import 'package:binancex/pages/homepage.dart';
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: const Color(0xFF181a20),
        body: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Image.asset("images/png1.png",
                              height: 100, width: 200),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text("Login",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: "Poppins-Regular")),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 5.0, top: 10),
                            child: TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.email,
                                        color: Color(0xFFfcd535)),
                                    hintText: "Email",
                                    border: OutlineInputBorder()))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 5.0, top: 5),
                            child: TextFormField(
                                controller: passwordController,
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.lock,
                                        color: Color(0xFFfcd535)),
                                    hintText: "Password",
                                    border: OutlineInputBorder()))),
                        const SizedBox(height: 14),
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: Material(
                            color: const Color(0xFFfcd535),
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()),
                                    (route) => false);
                              },
                              child: const Center(
                                child: Text("Login",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontFamily: "Poppins-Regular")),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()),
                                  (route) => false);
                            },
                            child: const Text("Register",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontFamily: "Poppins-Regular")))
                      ],
                    )),
              )
            ],
          ),
        )));
  }
}
