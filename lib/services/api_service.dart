import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vr_app/constants/base_url.dart';
import 'package:vr_app/models/product.dart';

class ApiService {
  List<Product> productFromJson(String str) =>
      List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

  Future<List<Product>?> fetchProducts() async {
    var client = http.Client();
    var url = Uri.parse(baseUrl + '/products');

    try {
      var responce = await client.get(url);
      if (responce.statusCode == 200) {
        var jsonString = responce.body;

        return productFromJson(jsonString);
      }
    } on Exception catch (error) {
      print(error);
    }
  }
}
