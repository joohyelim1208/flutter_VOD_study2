import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 5) 레시피 메뉴바 구성
    return Row(
      children: [
        Container(
          width: 60,
          height: 80,
          // 5) 아이콘에 테두리를 생성해줌
          decoration: BoxDecoration(
            // 5) color 속성에 커맨드+클릭. 들어가보면 각 색상에 대한 정보가 나옴 참고해서 조정하기
            border: Border.all(color: Colors.black12),
            // 5) 모서리를 둥글게
            borderRadius: BorderRadius.circular(30),
          ),

          // 6) 아이콘과 텍스트가 세로로 배치되어 있는 상태에서
          child: Column(
            // 7) 가운데로 이미지와 텍스트 정렬해줌
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.food_bank,
              size: 30,
              color: Colors.redAccent,
              )
              Text('ALL'), // 6) 여기까지 아이콘의 색상, 사이즈, 들어가는 텍스트가 버튼 모양으로 구현됨
              SizedBox(height: 5,) // 7) 글자와 아이콘의 간격이 조금 벌어져서 조정해줌. 아이콘 구현 완료!
            ],
          ),
        ),
      ],
    );
  }
}
// 8) 아이콘을 여러개 똑같이 구현할 때 Container를 복붙할 수도 있지만,
// 코드의 줄이 너무 길어지고 하나의 코드가 변경되었을 때 나머지 코드도 전부 변경해줘야 하는 번거로움이 발생
// 위젯을 컴포넌트화 시켜서 만들어준다.
