import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "FLUTTER MASTER",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32,
              ),
              child: Text(
                "WELCOME $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32,
              ),
              child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (username) {
                        setState(() {
                          name = username;
                        });
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(
                        const Duration(
                          milliseconds: 700,
                        ),
                      );
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      duration: const Duration(
                        milliseconds: 700,
                      ),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "LOGIN",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF6B62FF),
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 5),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: const Text("LOGIN"),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: const Size(150, 40),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
