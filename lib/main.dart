import 'package:first_flutter_project/pages/home_page.dart';
import 'package:first_flutter_project/pages/login_page.dart';
import 'package:first_flutter_project/utils/routes.dart';
import 'package:first_flutter_project/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: Mytheme.darktheme(context),
      theme: Mytheme.lighttheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeroute,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.homeroute: (context) => Homepage(),
        Myroutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
