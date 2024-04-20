import 'package:crypto_app/views/pages/home_page.dart';
import 'package:crypto_app/views/pages/market.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:crypto_app/utils/color_lib.dart';

enum Menus { home, trade, market, favorite, wallet }

final pages = [
  const HomePage(),
  const Center(
    child: Text("Trade"),
  ),
  const MarketPage(),
  const Center(
    child: Text("Favorite"),
  ),
  const Center(
    child: Text("Wallet"),
  )
];

class BottomBar extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 80,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.home);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => onTap(Menus.home),
                            icon: SvgPicture.asset(
                              "assets/icons/home.svg",
                              color: currentIndex == Menus.home
                                  ? ColorLib.kPrimary
                                  : Colors.black.withOpacity(0.3),
                            )),
                        // Add your label here, for example:
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.home
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.trade);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => onTap(Menus.trade),
                            icon: SvgPicture.asset(
                              "assets/icons/trade.svg",
                              color: currentIndex == Menus.trade
                                  ? ColorLib.kPrimary
                                  : Colors.black.withOpacity(0.3),
                            )),
                        // Add your label here, for example:
                        Text(
                          'Trade',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.trade
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.market);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => onTap(Menus.market),
                            icon: SvgPicture.asset(
                              "assets/icons/Vector (4).svg",
                              color: currentIndex == Menus.market
                                  ? ColorLib.kPrimary
                                  : Colors.black.withOpacity(0.3),
                            )),
                        // Add your label here, for example:
                        Text(
                          'Market',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.market
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.favorite);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => onTap(Menus.favorite),
                            icon: SvgPicture.asset(
                              "assets/icons/Star 1.svg",
                              color: currentIndex == Menus.favorite
                                  ? ColorLib.kPrimary
                                  : Colors.black.withOpacity(0.3),
                            )),
                        // Add your label here, for example:
                        Text(
                          'Favorite',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.favorite
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.wallet);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => onTap(Menus.wallet),
                            icon: SvgPicture.asset(
                              "assets/icons/Vector 57.svg",
                              color: currentIndex == Menus.wallet
                                  ? ColorLib.kPrimary
                                  : Colors.black.withOpacity(0.3),
                            )),
                        // Add your label here, for example:
                        Text(
                          'Wallet',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.wallet
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
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
    );
  }
}
