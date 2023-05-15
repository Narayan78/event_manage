import 'package:event_finder/screens/detailpage.dart';
import 'package:event_finder/screens/homepage.dart';
import 'package:event_finder/screens/startingpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
       debugShowCheckedModeBanner: false,
       home:  StartingPage(),
    );
  }
}