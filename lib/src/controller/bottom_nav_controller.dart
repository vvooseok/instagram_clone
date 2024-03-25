import 'package:get/get.dart';
import 'package:instaclone/pages/upload.dart';
// import 'dart:async';

enum PageName{ HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  // 뒤로가기 제어 (검색창에서 뒤로가기 -> 홈화면 등과 같은 제어)
  // List<int> bottomHistory = [0];


  void changeBottomNav(int value, {bool hasGesture = true}) {
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
        _changePage(value, hasGesture: hasGesture);
        break;
    }
  }

  void _changePage(int value, {bool hasGesture = true}) {
    // pageIndex 변경하면 페이지 바뀜
    pageIndex(value);
    //hasGesture == false이면 반환값 없음
    if (!hasGesture) return;
    /***
        // bottomHistory에 해당 값이 없을 때에만 value 추가
        if(!bottomHistory.contains(value)) {
        bottomHistory.remove(value);
        }
        bottomHistory.add(value);
        print(bottomHistory);
        }
     ***/
  }
}

  /***
  bool canPopAction() {
    if(bottomHistory.length == 1) {
      print('exit!');
      return true;
    } else {
      // 이전 페이지로 되돌아가기(뒤로가기 버튼)
      var index = bottomHistory.last;
      // bottomHistory에 value 저장되지 않음
      changeBottomNav(index, hasGesture: false);
      return false;
    }
  }
      ***/