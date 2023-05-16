import 'package:core_management_v2/core_management_v2.dart';
import 'package:ecommerce/animations/five_star_rating_rive.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

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
    final ThemeData themeData = context.themeData;

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
              child: Card(
                child: Container(
                  height: double.infinity,
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  width: double.infinity,
                  color: AppColors.mainBlackColor,
                  child: Column(
                    children: [
                      const Text("Ini info box"),
                      // FiveStarRatingRive(),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                              5,
                              (index) => const Icon(
                                Icons.star,
                                color: AppColors.mainColor,
                                size: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "4.5",
                              style: themeData.textTheme.titleMedium!
                                  .copyWith(color: AppColors.mainColor),
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "1287 comments",
                              style: themeData.textTheme.titleMedium!
                                  .copyWith(color: AppColors.mainColor),
                            ),
                          ),
                          Row(children: [],)
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
