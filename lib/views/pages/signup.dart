import 'package:crypto_app/routes/app_routes.dart';
import 'package:crypto_app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/img/Facebook.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/img/Google.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/img/Apple.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Continue with Apple",
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
                    decoration: const BoxDecoration(
                        color: ColorLib.kPrimary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Sign up with email",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(
                    height: 36,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .pushNamed(AppRoutes.signin);
                    },
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorLib.kPrimary,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          )),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Sign In",
                                style: TextStyle(
                                  color: ColorLib.kPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
