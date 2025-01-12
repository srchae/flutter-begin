import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // Button 클래스에 필요한 프로퍼티
  // final 필드에 대한 생성자 함수 만들기는 Code Actions를 통해 제공되어 있음
  final String text;
  final Color bgColor;
  final Color textColor;

  // 생성자 함수
  const Button(
      {required this.text, required this.bgColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: textColor),
        ),
      ),
    );
  }
}
