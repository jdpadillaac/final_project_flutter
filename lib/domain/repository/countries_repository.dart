import 'package:products_app/domain/entities/country.dart';

abstract class CountryRepository {
  Future<List<Country>> getList();
}
