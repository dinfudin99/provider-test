import 'package:flutter/material.dart';
import 'package:main_course_4/application/example_provider.dart';
import 'package:main_course_4/presentation/home/home_page.dart';
import 'package:main_course_4/presentation/profile/profile_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => ExampleProvider(),
        )
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
