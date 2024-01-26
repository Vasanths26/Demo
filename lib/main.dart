import 'package:flutter/material.dart';

import 'Home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 209, 199, 226),),
      //   useMaterial3: true,
      // ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
