import 'package:flutter/material.dart';
import 'package:products_app/domain/entities/country.dart';

class CountryItem extends StatelessWidget {
  final Country country;
  const CountryItem({Key key, @required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(country);
    return ListTile(
      title: Text(
        country.name,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(country.code),
      leading: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 44,
          minHeight: 44,
          maxWidth: 44,
          maxHeight: 44,
        ),
        child: Image.network(country.urlImage, fit: BoxFit.cover),
      ),
    );
  }
}
