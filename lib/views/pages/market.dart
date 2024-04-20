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
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                      )),
                  Text(
                    "Market",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt_outlined,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SearchBar(
                elevation: MaterialStatePropertyAll(1.5),
                hintText: 'Cryptocoin search ',
                hintStyle: MaterialStatePropertyAll(
                    TextStyle(color: ColorLib.koutline)),
                leading: SizedBox(
                  width: 20,
                  child: Image.asset("assets/icons/search.png"),
                ),
              ),
             
            
            ],
          ),
        ),
      ),
    );
  }
}
