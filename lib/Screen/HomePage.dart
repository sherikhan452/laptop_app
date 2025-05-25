import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/Food_Page.dart';
import 'package:laptop_app/Screen/My_Current_Location.dart';
import 'package:laptop_app/Screen/My_Drawer.dart';
import 'package:laptop_app/Screen/My_Sliver_app_bar.dart';
import 'package:laptop_app/Screen/My_Tab_bar.dart';
import 'package:laptop_app/Screen/My_food_tile.dart';
import 'package:laptop_app/Screen/MydiscriptionBox.dart';
import 'package:laptop_app/models/food.dart';
import 'package:laptop_app/models/restuarent.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fulMenu) {
    return fulMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fulMenu) {
    return FoodCategory.values.map(
      (category) {
        List<Food> categoryMenu = _filterMenuByCategory(category, fulMenu);
        return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return FoodTile(
              food: food,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodPage(food: food),
                ),
              ),
            );
          },
        );
      },
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Colors.purple,
                ),
                MyCurrentLocation(),
                Mydiscriptionbox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restuarent>(
          builder: (context, restuarent, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restuarent.menu),
          ),
        ),
      ),
    );
  }
}
