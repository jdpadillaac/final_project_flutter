import 'dart:convert';
import 'package:products_app/domain/entities/country.dart';
import 'package:products_app/domain/repository/countries_repository.dart';

import 'package:http/http.dart' as http;

class CountriesApiRepository extends CountryRepository {
  @override
  Future<List<Country>> getList() async {
    final resp = await http
        .get('https://x6zzmb7bei.execute-api.us-west-2.amazonaws.com/testing');

    final jsonData = jsonDecode(resp.body);
    List<Country> countries = [];
    final data = jsonData["data"]["Items"];
    data.forEach((country) {
      Country newCountry = Country.fromJson(country);
      countries.add(newCountry);
    });

    return countries;
  }
}
