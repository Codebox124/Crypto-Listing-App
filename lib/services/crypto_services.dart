// b022c7eb-cae9-4dce-8c84-7ee6dd2979b9
import 'dart:convert';

import 'package:http/http.dart' as http;

class CryptoService {
  Future<List<dynamic>> fetchCryptoData() async {
    final Map<String, String> headers = {
      'X-CMC_PRO_API_KEY': 'b022c7eb-cae9-4dce-8c84-7ee6dd2979b9',
      'Accept': 'application/json',
    };

    final Uri uri = Uri.https(
      'sandbox-api.coinmarketcap.com',
      '/v1/cryptocurrency/listings/latest',
      {'start': '1', 'limit': '5000', 'convert': 'USD'},
    );

    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load cryptocurrencies');
    }

    // if (response.statusCode == 200) {
    //   final Map<String, dynamic> data = json.decode(response.body);
    //   setState(() {
    //     cryptocurrencies = data['data'];
    //     isLoading = false;
    //   });
    // } else {
    //   throw Exception('Failed to load cryptocurrencies');
    // }
  }
}
