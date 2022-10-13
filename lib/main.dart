import 'package:flutter/material.dart';
import 'package:unknownpro/home_page.dart';
import 'package:unknownpro/search.dart';

void main() {
  runApp(const Unknown());
}

class Unknown extends StatelessWidget {
  const Unknown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unknown',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}
