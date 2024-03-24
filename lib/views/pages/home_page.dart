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
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 128,
                child: Placeholder(),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Market Movers",
                    style: TextStyle(
                      color: ColorLib.ktextBlack,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      color: ColorLib.kPrimary,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 190,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 8,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: 156,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BTC/USD",
                                        style: TextStyle(
                                          color: ColorLib.ktextBlack,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "30,113.80",
                                        style: TextStyle(
                                          color: ColorLib.ktextBlack,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/img/Bitcoin_perspective_matte.png",
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "+2.76%",
                                style: TextStyle(
                                  color: ColorLib.ktextgreen,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Image.asset(
                                "assets/img/Vector (4).png",
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("24H Vol."),
                                  Text("394 897 432,26")
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: 5),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Portfolio",
                    style: TextStyle(
                      color: ColorLib.ktextBlack,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      color: ColorLib.kPrimary,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
