import 'package:flutter/material.dart';
import 'package:vr_app/constants/theme.dart';
import 'package:vr_app/screens/product_detail/product_detail_screen.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile App - Virtual Reality Store',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detail': (context) => const ProductDetailScreen(),
      },
      theme: ThemeData.light().copyWith(
          splashColor: Colors.transparent,
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor),
      initialRoute: '/',
    );
  }
}
