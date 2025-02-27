import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  // isInverted : 카드 색상 반전을 위한 속성
  final bool isInverted;
  final double? x;
  final double? y;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    this.x,
    this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(x ?? 0, y ?? 0),
      child: Container(
        // clipBehavior : 어떤 아이템이 overflow 되었을 때, 나머지 부분을 어떻게 처리할 지 명시하는 속성
        clipBehavior: Clip.hardEdge, // Edge를 넘어가는 부분을 Cut
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Transform.scale :
              Transform.scale(
                scale: 2, // 아이콘의 크기
                child: Transform.translate(
                  offset: Offset(-5, 15), // 아이콘의 위치
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 90,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
