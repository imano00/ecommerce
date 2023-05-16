import 'package:core_management_v2/core_management_v2.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = context.themeData;

    return PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        });
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? AppColors.grey : AppColors.mainBlackColor,
            //TODO add images here
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          //TODO try using card
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              margin: const EdgeInsets.only(left: 5, right: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.yellowColor,
              ),
              child: const Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("Ini info box"),
                    ],
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
