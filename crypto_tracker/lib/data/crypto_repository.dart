import 'package:http/http.dart' as http;

import 'dart:convert';

//fethcing the cryptocurrency data
class CryptoRepository {
  //Implementation
  Future<List<Crypto>> getCryptoList() async {
    final response = await http.get(Uri.parse('API_URL_HERE'));
    if (response.statusCAode == 200) {
      final data = jsonDecode(response.body);
      final cryptoList = List<Crypto>.from(
          data.map((cryptoData) => Crypto.fromJson(cryptoData)));
      return cryptoList;
    } else {
      throw Exception("Failed to fetch cryptocurrency data");
    }
  }
}

class Crypto {
  final String name;
  final double price;
  Crypto({required this.name, required this.price});

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      name: json['name'],
      price: json['price'],
    );
  }
}
