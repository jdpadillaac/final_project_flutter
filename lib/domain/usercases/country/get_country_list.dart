import 'package:products_app/data/rest_api/countries.dart';
import 'package:products_app/domain/entities/country.dart';

class GetCountryList {
  Future<List<Country>> getList() async {
    final storage = CountriesApiRepository();
    final result = await storage.getList();
    print(result);
    return result;
  }
}
