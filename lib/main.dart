// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_bitcoin/pages/home_pages.dart';
import 'package:my_bitcoin/provider/market_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MarketProvider(),
        ),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
