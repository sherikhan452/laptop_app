import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/My_Current_Location.dart';
import 'package:laptop_app/Screen/My_Drawer.dart';
import 'package:laptop_app/Screen/My_Sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Colors.purple,
                ),
                MyCurrentLocation(),
              ],
            ),
            title: Text("title"),
          ),
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
