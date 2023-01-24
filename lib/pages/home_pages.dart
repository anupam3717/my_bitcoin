// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
// ignore: unused_import

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      child: Text("i anupam i am from kolkata"),
    );
  }
}
