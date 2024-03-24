import 'package:get/get.dart';
import 'package:instaclone/pages/upload.dart';
import 'dart:async';

enum PageName{ HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;
  //

  // 뒤로가기 제어 (검색창에서 뒤로가기 -> 홈화면 등과 같은 제어)
  List<int> BottomHistory = [0];


  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.UPLOAD:
        // Upload라는 새로운 페이지를 만들어줌 => upload.dart
        Get.to(() => const Upload());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value);
        break;
    }
  }

  void _changePage(int value) {
    // pageIndex 변경하면 페이지 바뀜
    pageIndex(value);
  }

  Future<bool> canPopAction() async {
    if(BottomHistory.length == 1) {
      print('exit!');
      return true;
    } else {
      print('goto before page!');
      return false;
    }
  }
}