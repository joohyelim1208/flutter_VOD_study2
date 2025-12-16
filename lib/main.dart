import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_ltem.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'package:flutter_recipe_app/recipe_title.dart';

// 이미지, 폰트 파일까지 만들고 pubspec.yaml 적용 완료
// 21) 예제를 보고 따라하고 완성하였지만, 가상 디바이스와 연동이 안되는 문제가 발생했다.
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
      // 3) 위젯이 들어갈 body: Column()를 만들어줌
      // 11) Column 커맨드+. 'Wrap widget Padding'
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ), // 11) 가로방향만 적용할거라 symmetric. 다시 레시피 메뉴로 돌아가서,
        // 17) Column을 ListView로 바꿔준다. 세로스크롤 적용
        child: ListView(
          // 4) 가로정렬을 써준다. 주축기준으로 왼쪽, 위쪽 / 교차쪽 start, end, center
          // 17) crossAxisAlignment: CrossAxisAlignment.start, // 4) 뼈대 작성 완료
          // 17) ListView에는 crossAxisAlignment:가 없기 때문에 지워준다!
          // 17) 다시 가상 디바이스를 실행해 보면 아래의 빗금이 사라지고 없다!!! 정상적으로 스크롤 됨.
          // 18) 아래 레시피 아이템의 이미지와 텍스트들이 너무 붙어 있어서 리스트아이템리스트에서 패딩으로 조정해주기.
          children: [
            RecipeTitle(),
            RecipeMenu(),
            // 15) 마리 틀을 짜둔! 레시피리스트아이템 ()안에 값을 넣어준다.
            // 15) 하지만 출력이 되지 않음! 왜냐면 레시피아이템에서 path변수 선언만 했지 이미지 경로나 문자열들을 반영을 안했음. 다시 레시피아이템으로 돌아가서,
            RecipeListItem('assets/image/coffee.jpg', 'Coffee'),
            RecipeListItem('assets/image/burger.jpg', 'burger'),
            RecipeListItem(
              'assets/image/pizza.jpg',
              'pizza',
            ), // 3) 각 위젯들이 잘 배치 되었는지 가상 디바이스로 확인.
            // 3) 각각의 위젯이 text로 배치된 것을 확인. 좌측 가운데 정렬되어 있음
          ],
        ),
      ),
    );
  }
}
