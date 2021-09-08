import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:unsplash_api/view/home/home_binding.dart';
import 'package:unsplash_api/view/home/home_page.dart';

void main() async {
  await _loadDotEnv();
  runApp(MyApp());
}

Future _loadDotEnv() async {
  await dotenv.load(fileName: '.env');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Unsplash Photo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.black,
      ),
      initialBinding: HomeBinding(),
      home: HomePage(),
    );
  }
}
