import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      // clipBehavior : 어떤 아이템이 overflow 되었을 때, 나머지 부분을 어떻게 처리할 지 명시하는 속성
      clipBehavior: Clip.hardEdge, // Edge를 넘어가는 부분을 Cut
      decoration: BoxDecoration(
          color: Color(0xFF1F2123), borderRadius: BorderRadius.circular(30)),
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
                      color: Colors.white,
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
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
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
                  color: Colors.white,
                  size: 90,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
