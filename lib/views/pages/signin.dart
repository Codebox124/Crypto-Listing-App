import 'package:crypto_app/routes/app_routes.dart';
import 'package:crypto_app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop(AppRoutes.signup);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
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
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Column(
                children: [
                  Text(
                    "Login to your Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorLib.ktextBlack,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 24,
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
                  Container(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
