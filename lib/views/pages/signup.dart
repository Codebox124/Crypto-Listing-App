import 'package:crypto_app/utils/color_lib.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/img/Coinmoney.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Coinmoney",
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorLib.kPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  const Text(
                    "Hello! Start your crypto investment today",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorLib.ktextBlack,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: ColorLib.koutline,
                    )),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "Continue with Facebook",
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: ColorLib.koutline,
                    )),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "Continue with Google",
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: ColorLib.koutline,
                    )),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "Continue with Apple",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
