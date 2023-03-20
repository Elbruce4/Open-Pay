import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:open_pay/ResponsibeQuerys/index.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 18, 40, 240)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/openPay.png",
            width: mediaWidth(context, 0.75),
          ),
          Text(
            "Bienvenidos",
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          )
        ],
      ),
    );
  }
}