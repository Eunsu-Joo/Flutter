import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 패키지 불러오는 부분
void main() {
  runApp(const MyApp()); // 이 부분으로 플루터에게 메인 페이지야~ 라고 알려주는 부분.
}

final _valueList = [];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 여기는 초기 앱 설정 부분
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            height: 150,
            margin: EdgeInsets.all(16),
            color: Colors.amber,
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "dustin.jpg",
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                      cacheWidth: 150,
                    ),
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                      margin: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("카메라 팝니다",
                              style: GoogleFonts.getFont("Nanum Gothic",
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          Text("방금 10분 전"),
                          Text("7000원"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite),
                              Text("4",
                                  style: GoogleFonts.getFont("Roboto",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600))
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          )),
    );
  }
}

// 플루터 디자인은 일반적으로 위젯을 끼워맞추는 형식으로 만들어짐.
// MaterialApp()은 아마 위젯을 사용하기 위한 함수일 것 같음.

// 꼭 알아야 하는 위젯 4가지
// 글자 Text("Hello World!")
// 이미지 Image.asset(경로)
//  => 이미지 등록 우선: pubspec.yaml에 파일 등록.
//  => pubspec.yaml : 앱 만들때 필요한 모든 파일을 정리해 놓은 파일.
// 아이콘 Icon(Icons.아이콘이름)
// 박스 : Container() | SizedBox
// flutter : lp 단위, 기준은 부모가 결정함.
// Center : 내 자식 위젯의 기준점을 중앙으로 설정해주는 Center 함수
// 위젯 안에 위젯을 넣으면 됨.(child 사용)
// Scaffold : 앱을 상 | 중 | 하로 나눠줌.
// Row :  가로로 배치하고 싶을 떄 사용
// Children : 자식으로 넣고 싶은 차일드가 많을 떄 사용하는 위젯
// Container > SizedBox : Container가 더 무거움
// padding, margin 외에 짜질구리한 style 은 decoration 안에 넣어야 함.
// double.infinity : 100%, 100vh, 100vw 개념 부모 레이아웃을 넘지 않는 선에서 차지

// 1. 원본 디자인 준비
// 2. 예시화면 네모 그리기
// 3. 바깥부터 안쪽까지 하나하나 위젯으로
// 4. 마무리 디자인
