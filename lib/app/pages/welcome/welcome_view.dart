import 'package:flutter/material.dart';
import 'package:products_app/app/utils/size_config.dart';
import 'package:products_app/app/pages/home/home_view.dart';

class WelcomePage extends StatefulWidget {
  static String routeName = 'welcome';
  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
