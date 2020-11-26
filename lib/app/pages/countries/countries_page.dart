import 'package:flutter/material.dart';
import 'package:products_app/app/pages/countries/widgets/country_item.dart';
import 'package:products_app/domain/entities/country.dart';
import 'package:products_app/domain/usercases/country/get_country_list.dart';

class CountiresPage extends StatelessWidget {
  const CountiresPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = GetCountryList();

    return Container(
      child: SingleChildScrollView(
        child: FutureBuilder(
          future: data.getList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<Country> countryList = snapshot.data;
              return Column(
                children: [
                  ...List.generate(
                    snapshot.data.length,
                    (index) => CountryItem(
                      country: countryList[index],
                    ),
                  ),
                ],
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
