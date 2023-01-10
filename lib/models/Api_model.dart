import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<List<dynamic>> getMarket() async {
    Uri address = Uri.parse(
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=5&page=1&sparkline=false");
    // ignore: unused_local_variable
    var response = await http.get(address);
    var responseBody = jsonDecode(response.body);

    List<dynamic> temp = responseBody as List<dynamic>;
    return temp;
  }
}
