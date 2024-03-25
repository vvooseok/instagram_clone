import 'package:flutter/material.dart';
// import 'package:instaclone/src/app.dart';
// import 'package:instaclone/src/components/avatar_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // 가로로 스크롤 되는 스토리 영역 만들기
  /***
  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          100,
              (index) => const AvatarWidget(
                type: AvatarType.TYPE1,
                thumbPath: 'https://t1.daumcdn.net/table_attach/1752784365/03c348996ba9e9ab60e5c6ec00566064e6987bcc',
              ),
        ),
      ),
    );
  }
      ***/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation은 선 생기는 것
        elevation: 0,
        // 로고 부분 추가 예정 title: ImageData(IconsPath.logo, width: 270,),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              // direct message 부분(삭제 가능)
              /***
              child: ImageData(
                IconsPath.directMessage,
                width: 50,
              ),
                  ***/
            ),
          )
        ],
      ),
      body: ListView(
        children: const [
          // _storyBoardList(),
          // _postList()
        ],
      ),
    );
  }
}
