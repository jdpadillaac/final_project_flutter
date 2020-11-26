import 'package:flutter/material.dart';
import 'package:products_app/app/pages/welcome/welcome_view.dart';
import 'package:products_app/app/utils/routes.dart';
import 'package:products_app/app/utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'products',
      theme: lightTheme(),
      initialRoute: WelcomePage.routeName,
      routes: appRoutes,
    );
  }
}
