import 'package:flutter/material.dart';

class Mydiscriptionbox extends StatelessWidget {
  const Mydiscriptionbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "\$0.99",
                style: TextStyle(color: Colors.red),
              ),
              Text(
                "Delivery fee",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "15-30 min",
                style: TextStyle(color: Colors.red),
              ),
              Text(
                "Delivery Time",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
