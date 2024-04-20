import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:crypto_app/utils/color_lib.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> cryptocurrencies = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCryptoData();
  }

  Future<void> fetchCryptoData() async {
    final Map<String, String> headers = {
      'Accept': 'application/json',
    };

    final Uri uri = Uri.https(
      'api.coingecko.com',
      '/api/v3/coins/markets',
      {
        'vs_currency': 'usd',
        'sparkline': 'true',
        'x_cg_demo_api_key': 'CG-PqL6H2pe4dPmpT2oBhtDi8Hw'
      },
    );

    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        cryptocurrencies = data; // Assign the data directly to cryptocurrencies
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load cryptocurrencies');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(locale: 'en_US', symbol: '\$');
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
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
                            onPressed: () {},
                            icon: Icon(Icons.settings_outlined)),
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
                      height: 170,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final crypto = cryptocurrencies[index];
                            final price =
                                currencyFormat.format(crypto['current_price']);
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0.5,
                                    blurRadius: 8,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
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
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              crypto['symbol']
                                                  .toString()
                                                  .toUpperCase(),
                                              style: TextStyle(
                                                color: ColorLib.ktextBlack,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              price,
                                              style: TextStyle(
                                                color: ColorLib.ktextBlack,
                                                fontSize: 16,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.network(
                                            crypto['image'],
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '${crypto['ath_change_percentage'].toStringAsFixed(2)}%',
                                      style: TextStyle(
                                        color:
                                            crypto['ath_change_percentage'] < 0
                                                ? Colors.red
                                                : ColorLib.ktextgreen,
                                        fontSize: 16,
                                      ),
                                    ),
                                   
                                    // Container(
                                    //     height: 90,
                                    //     child: Image.network(
                                    //         crypto['sparkline_in_7d']('thumb'))),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("24H Vol."),
                                        Text('${crypto['total_volume']}')
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
                          itemCount: cryptocurrencies.length),
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
                    Container(
                      height: 300,
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          final crypto = cryptocurrencies[index];
                          final price =
                              currencyFormat.format(crypto['current_price']);

                          return ListTile(
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                crypto['image'],
                              ),
                            ),
                            title: Text(crypto['name']),
                            subtitle: Text(crypto['symbol']),
                            trailing: Text(price),
                            // Display the sparkline graph
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
