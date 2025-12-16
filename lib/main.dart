import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_ltem.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'package:flutter_recipe_app/recipe_title.dart';

// 이미지, 폰트 파일까지 만들고 pubspec.yaml 적용 완료
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 4) 레시피 타이틀 구성 완료.
      theme: ThemeData(
        fontFamily: 'NotoSansKR', // 4) yaml에 올린 폰트 스타일 적용
      ),
      home: RecipePage(),
    );
  }
}

// 1) 기본 Scaffold 페이지 세팅
// 2) lib 폴더에 각각의 위젯을 만들 파일을 생성한다! title / menu / item
// 1) RecipePage 커맨드+. 'missing override' 선택
class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 3) 상단 앱 바를 생성하고 시작.
      appBar: AppBar(
        // 5) 앱 바에 들어갈 아이콘 넣기
        Icon(
          CupertinoIcons.search, // 써치모양 아이콘
          size: 30,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart, // 하트모양 아이콘
          size: 30,
          Color: Colors.red,
          // 5) 아이콘들이 우측 상단에 배열되어 있음. SizedBox를 이용해 여백을 주자.
        ),
        // 5) 앱 바 구현 완료!! -> 레시피 타이틀 만들기.
        SizedBox(width: 15),
      ),
      // 3) 위젯이 들어갈 body를 만들어줌
      body: Column(
        // 4) 가로정렬을 써준다. 주축기준으로 왼쪽, 위쪽 / 교차쪽 start, end, center
        crossAxisAlignment: CrossAxisAlignment.start, // 4) 뼈대 작성 완료

        children: [
          RecipeTitle(),
          RecipeMenu(),
          RecipeListItem(),
          RecipeListItem(),
          RecipeListItem(), // 3) 각 위젯들이 잘 배치 되었는지 가상 디바이스로 확인.
          // 3) 각각의 위젯이 text로 배치된 것을 확인. 좌측 가운데 정렬되어 있음
        ],
      ),
    );
  }
}
