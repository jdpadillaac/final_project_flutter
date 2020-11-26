import 'package:flutter/material.dart';
import 'package:products_app/app/utils/colors.dart';
import 'package:products_app/domain/entities/product.dart';
import 'package:products_app/domain/usercases/product/get_product_list.dart';

class ProducstPage extends StatelessWidget {
  const ProducstPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final data = GetProductList();

    return FutureBuilder(
      future: data.getList(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<Product> products = snapshot.data;
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: appPrimaryColor),
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      products[index].url,
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      products[index].nameProduct,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '\$ ${products[index].price}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
