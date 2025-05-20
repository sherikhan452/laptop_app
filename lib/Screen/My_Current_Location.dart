import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Delivery App"),
        Row(
          children: [
            Text("9088 Naya Nazimabad Block C"),
            Icon(Icons.keyboard_arrow_down_rounded)
          ],
        )
      ],
    );
  }
}
