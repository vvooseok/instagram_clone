// import 'package:universal_html/html.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instaclone/src/components/image_data.dart';
import 'package:instaclone/src/controller/bottom_nav_controller.dart';
import 'package:instaclone/src/pages/home.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // 취소키 컨트롤
    return PopScope(

        // canPop: controller.canPopAction(),
        child: Obx(() =>
            Scaffold(
              appBar: AppBar(),
              body: IndexedStack(
                index: controller.pageIndex.value,
                children: [
                  const Home(),
                  Container(child: const Center(child: Text('HOME')),
                  ),
                  Container(child: const Center(child: Text('SEARCH')),
                  ),
                  Container(child: const Center(child: Text('UPLOAD')),
                  ),
                  Container(child: const Center(child: Text('ACTIVITY')),
                  ),
                  Container(child: const Center(child: Text('MYPAGE')),
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                // 라벨 지우기
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: controller.pageIndex.value,
                elevation: 0,
                onTap: controller.changeBottomNav,
                items: [
                  BottomNavigationBarItem(
                      icon: ImageData(IconsPath.homeOff),
                      activeIcon: ImageData(IconsPath.homeOn),
                      label: 'home'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageData(IconsPath.searchOff),
                      activeIcon: ImageData(IconsPath.searchOn),
                      label: 'home'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageData(IconsPath.uploadIcon),
                      label: 'home'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageData(IconsPath.activeOff),
                      activeIcon: ImageData(IconsPath.activeOn),
                      label: 'home'
                  ),
                  BottomNavigationBarItem(
                      icon: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey
                          ),
                      ),
                      label: 'home'
                  ),
                ],
              ),
            ),
        ),
    );
  }
}