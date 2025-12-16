import 'package:flutter/material.dart';

// 이미지, 폰트 파일까지 만들고 pubspec.yaml 적용 완료
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

// 1) 기본 Scaffold 페이지 세팅
// 2) lib 폴더에 각각의 위젯을 만들 파일을 생성한다! title / menu / item
// 1) RecipePage 커맨드+. 'missing override' 선택
class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
