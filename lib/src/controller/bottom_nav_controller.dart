import 'package:get/get.dart';

enum PageName{ HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.HOME:
        break;
      case PageName.SEARCH:
        break;
      case PageName.UPLOAD:
        break;
      case PageName.ACTIVITY:
        break;
      case PageName.MYPAGE:
        break;
    }
    // pageIndex 변경하면 페이지 바뀜
    pageIndex(value);
  }
}