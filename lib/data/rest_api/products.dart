import 'dart:convert';
import 'package:products_app/domain/entities/product.dart';

import 'package:products_app/domain/repository/products.repository.dart';
import 'package:http/http.dart' as http;

class ProductApiRepository extends ProductRepository {
  @override
  Future<List<Product>> getList() async {
    final resp = await http.get(
        'https://jelwqiq551.execute-api.us-east-2.amazonaws.com/test-lambda');

    final jsonData = jsonDecode(resp.body);
    List<Product> products = [];
    final data = jsonData["data"]["Items"];
    data.forEach((product) {
      print(product);
      Product newProduct = Product.fromJson(product);
      products.add(newProduct);
    });

    return products;
  }
}
