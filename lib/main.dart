import 'package:flutter/material.dart';
import 'package:news_app_bloc/pages/login_page.dart';
import 'package:news_app_bloc/service/api_service.dart';

void main() async {
  runApp(NewsApp());
  print(await NewsServiceImp().getAllNewsInCountry('us'));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}
