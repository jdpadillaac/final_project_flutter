import 'package:flutter/material.dart';
import 'package:products_app/app/pages/home/home_view.dart';
import 'package:products_app/app/pages/welcome/welcome_view.dart';

final Map<String, WidgetBuilder> appRoutes = {
  WelcomePage.routeName: (_) => WelcomePage(),
  HomeScreen.routeName: (_) => HomeScreen(),
};
