import 'package:flutter/material.dart';
import 'package:flutter_practice/core/store.dart';
import 'package:flutter_practice/pages/cart_page.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'package:flutter_practice/utils/routes.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/home_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      //initialRoute: "/login",
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
