import 'package:crypto_app/utils/color_lib.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person_3_outlined)),
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
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.settings_outlined)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Portfolio Balance",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18, // Add fontWeight if necessary
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$2,760.23",
                    style: TextStyle(
                      fontSize: 32, // Adjust font size as needed
                      fontWeight:
                          FontWeight.bold, // Add fontWeight if necessary
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "+2.60%",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w500, // Add fontWeight if necessary
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
