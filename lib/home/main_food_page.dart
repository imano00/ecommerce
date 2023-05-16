import 'package:core_management_v2/core_management_v2.dart';
import 'package:ecommerce/home/food_page_body.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = context.themeData;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: AppColors.iconColor1,
          ),
        ],
        title: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Country", style: themeData.textTheme.titleMedium!.copyWith(color: AppColors.mainColor),),
                Text("City", style: themeData.textTheme.titleSmall!.copyWith(color: AppColors.mainColor),),
              ],
            ),
          ],
        ),
      ),
      body: FoodPageBody(),
    );
  }
}
