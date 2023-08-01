import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_first/Pages/login_page.dart';
import 'package:flutter_first/Utils/MyRoutes.dart';
import 'package:flutter_first/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:  HomePage(),
      themeMode: ThemeMode.light,
      theme:MyTheme.LightTheme,
      darkTheme: MyTheme.Darktheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute : (context) => const HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
