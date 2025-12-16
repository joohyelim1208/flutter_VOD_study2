import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 12) return Text('RecipeListItem'); 텍스트로 보던 것 지우고, 들어갈 이미지 넣어주기
    return Column(
      // 13) 글자들이 왼쪽으로 붙어있는걸 가로정렬 해야 됨.
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('asset/images/coffee.jpg'),
        Text('Made Coffee', style: TextStyle(fontSize: 20)),
        Text(
          "Have you ever made your own Coffee? Once you've tried a hommade Coffee, you'll never go back.",
          style: TextStyle(fontSize: 12),
        ),
        // 12) 문자열 안에 '가 들어가면 끊기는 것으로 인식하기 때문에 ""를 써준다.
      ],
    );
  }
}
