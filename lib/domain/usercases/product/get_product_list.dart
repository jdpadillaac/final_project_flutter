import 'package:products_app/data/rest_api/products.dart';
import 'package:products_app/domain/entities/product.dart';

class GetProductList {
  Future<List<Product>> getList() async {
    final storage = ProductApiRepository();
    final result = await storage.getList();
    print(result);
    return result;
  }
}
