import 'package:flutter/material.dart';
import 'package:products_app/app/pages/countries/countries_page.dart';
import 'package:products_app/app/pages/home/widgets/home_header.dart';
import 'package:products_app/app/pages/products/products_page.dart';
import 'package:products_app/app/widgets/navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final TextStyle textStyle = TextStyle(color: Colors.blue, fontSize: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Color(0xFFF5F7FA),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 30),
            HomeHeader(),
            Expanded(
              child: IndexedStack(
                index: index,
                children: [ProducstPage(), CountiresPage()],
              ),
            ),
            CustomBottomNavigationBar(
              homeIndex: index,
              onIndexSelected: (value) {
                setState(() {
                  index = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
