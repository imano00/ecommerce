import 'package:core_management_v2/core_management_v2.dart';
import 'package:ecommerce/screens/home/food_page_body.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainFoodPage extends StatefulWidget {
  MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => MainFoodPageState();
}

class MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = context.themeData;
    final size = MediaQuery.of(context).size;

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
                Text("City", style: themeData.textTheme.titleSmall!.copyWith(color: AppColors.textNearlyBlack),),
              ],
            ),
          ],
        ),
      ),
      body: FoodPageBody(),
    );
  }
}
