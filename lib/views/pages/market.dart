import 'package:crypto_app/utils/color_lib.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Scaffold(
        body: SingleChildScrollView(
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
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      )),
                  const Text(
                    "Market",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt_outlined,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SearchBar(
                elevation: const MaterialStatePropertyAll(1.5),
                hintText: 'Cryptocoin search ',
                hintStyle: const MaterialStatePropertyAll(
                    TextStyle(color: ColorLib.koutline)),
                leading: SizedBox(
                  width: 20,
                  child: Image.asset("assets/icons/search.png"),
                ),
              ),
              TabBar(
                isScrollable: true,
                tabs: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
