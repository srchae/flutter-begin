import 'package:flutter/material.dart';
import 'package:flutter_first_app/widgets/button.dart';
import 'package:flutter_first_app/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFF181818),
            // SingleChildScrollView : 크기를 초과하는 콘텐츠를 스크롤 가능하게 만들어주는 위젯
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Hey Srchae",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Welcome back!",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                              ),
                            )
                          ]),
                    ]),
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "\$5 194 382",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                            text: "Transfer",
                            bgColor: Color(0xFFF1B33B),
                            textColor: Colors.black),
                        Button(
                            text: "Request",
                            bgColor: Color(0xFF1F2123),
                            textColor: Colors.white)
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wallets",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    CurrencyCard(
                      name: "Euro",
                      code: "EUR",
                      amount: "6 428",
                      icon: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    Transform.translate(
                      offset: Offset(0, -20),
                      child: CurrencyCard(
                        name: "Bitcoin",
                        code: "BTC",
                        amount: "9 785",
                        icon: Icons.currency_bitcoin_rounded,
                        isInverted: true,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -40),
                      child: CurrencyCard(
                        name: "Dollar",
                        code: "USD",
                        amount: "428",
                        icon: Icons.attach_money_outlined,
                        isInverted: false,
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
