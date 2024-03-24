import 'package:flutter/material.dart';
import 'package:instaclone/src/app.dart';
import 'package:get/get.dart';
import 'package:instaclone/src/binding/init_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black)
        )
      ),
      // 최초 필요한 controller를 instance로
      initialBinding: InitBinding(),
      home: const App()
    );
  }
}