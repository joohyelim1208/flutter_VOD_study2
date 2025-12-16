import 'package:flutter/material.dart'; 

class RecipeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 2) 텍스트 위젯을 먼저 구현하는 이유: 배치를 먼저 잘 됐는지 확인하려면 가장 쉬운 방법이다
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      // 3) 상단에 20만큼 패딩값이 적용됨
      child: Text( // 3) Text 커맨드+. 'Wrap with Padding'
        'RecipeTitle'
        style: TextStyle(
          fontSize: 30,
        ),
        ),
    );
  }
}
