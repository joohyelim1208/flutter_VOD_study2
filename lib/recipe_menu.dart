import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 5) 레시피 메뉴바 구성
    // 11) Row도 패딩으로 감싸주기. 레시피 메뉴 구현 완료!!!
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        // 8) Container 함수
        children: [
          // 10) menuItem()에 수정된 함수를 넘겨줄 파라미터를 만들기
          // 10) 각각에 맞는 아이콘을 넣으면 정상 출력. 이제 간격을 조정해줘야 함
          menuItem(Icons.food_bank, 'All'),
          SizedBox(width: 25),
          menuItem(Icons.emoji_food_beverage, 'Coffee'),
          SizedBox(width: 25),
          menuItem(Icons.fastfood, 'Burger'),
          SizedBox(width: 25), // 10) 여기까지 간격은 조정됐지만 왼쪽에 위치해서 가운데로 Padding을 줘서 정렬해야 함. 해당 앱은 전부 동일한 정렬이라 main으로 가서 동일하게 적용.
          menuItem(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }

  Container menuItem(IconData icon, String text) { // 9) menuItem() 함수 안에 들어가는 작업을 하기.
    return Container( // 8) 커맨드+. 'Extract Method' 제목은 menuItem 이라고 해준다. Container가 별도의 함수로 빠짐!
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
            // Icon(Icons.food_bank, 9) 삭제하고 함수 수정
            Icon(
            size: 30,
            color: Colors.redAccent,
            )
            // 9) 삭제하고 함수 수정. Text('ALL'), // 6) 여기까지 아이콘의 색상, 사이즈, 들어가는 텍스트가 버튼 모양으로 구현됨
            Text(text),
            SizedBox(height: 5,) // 7) 글자와 아이콘의 간격이 조금 벌어져서 조정해줌. 아이콘 구현 완료!
          ],
        ),
      );
  }
}
// 8) 아이콘을 여러개 똑같이 구현할 때 Container를 복붙할 수도 있지만,
// 코드의 줄이 너무 길어지고 하나의 코드가 변경되었을 때 나머지 코드도 전부 변경해줘야 하는 번거로움이 발생
// 위젯을 컴포넌트화 시켜서 만들어준다.
