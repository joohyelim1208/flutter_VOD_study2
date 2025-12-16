import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  // 14) 각각 리스트 아이템의 사진과 글자들이 조금씩 다른걸 수정하려고 함
  // 14) class로 되어있는 위젯은 따로 생성자에서 파라미터를 받아줘야 한다.
  // 14) class 내에서 받을 변수를 입력해주자
  // 14) (이미지의 경로와 문자열을 바꿔줘야 되는 부분)

  // 15) String path;, title; 에러를 초기화해 줌. path와 title을 반드시 같이 넘겨줘야만 사용이 가능. 다시 main으로 가서
  RecipeListItem(this.path, this.title);

  String path; // 14) 아래 빨간줄이 뜨는데 초기화가 안됐다고 뜸.
  String title;

  @override
  Widget build(BuildContext context) {
    // 12) return Text('RecipeListItem'); 텍스트로 보던 것 지우고, 들어갈 이미지 넣어주기
    return Column(
      // 13) 글자들이 왼쪽으로 붙어있는걸 가로정렬 해야 됨.
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 16) Image.asset('asset/images/coffee.jpg'), 를 변수를 선언하기 위해 파라미터로 변경
        // 16) Text('Made Coffee', 변경. 변수로 치환해줌
        Image.asset(path),
        Text('Made $title', style: TextStyle(fontSize: 20)),
        Text(
          // 16) "Have you ever made your own Coffee? Once you've tried a hommade Coffee, you'll never go back.", 변경
          // 16) 여기까지 배치 완료!! 하단에 제한된 크기가 스크롤 넘어가서 화면에 빗금처리가 되어있게 됨.
          // 17) ListView 위젯을 활용해 세로 스크롤을 달아주자!!
          "Have you ever made your own $title? Once you've tried a hommade Coffee, you'll never go back.",
          style: TextStyle(fontSize: 12),
        ),
        // 12) 문자열 안에 '가 들어가면 끊기는 것으로 인식하기 때문에 ""를 써준다.
      ],
    );
  }
}
