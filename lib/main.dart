import 'package:flutter/material.dart';
import 'package:instaclone/pages/user/join_page.dart';
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
    // GetX 사용(상태 관리)
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // routing 필요 없음 GetX 사용 예정

      // 최초 필요한 controller를 instance로
      initialBinding: InitBinding(),
      home: JoinPage(),
    );
  }
}