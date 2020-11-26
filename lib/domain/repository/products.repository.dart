import 'package:products_app/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getList();
}
