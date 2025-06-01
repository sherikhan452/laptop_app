import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/My_Receipt.dart';

class Deliveryprogresspage extends StatelessWidget {
  const Deliveryprogresspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Page"),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }
}

Widget _buildBottomNavBar(BuildContext context) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    padding: EdgeInsets.all(25),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kareem",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            Text(
              "Driver",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.call),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
