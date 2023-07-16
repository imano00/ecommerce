import 'package:core_management_v2/core_management_v2.dart';
import 'package:ecommerce/animations/five_star_rating_rive.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => FoodPageBodyState();
}

class FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
  }

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
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.3,
      color: Colors.amber,
      child: Column(
        children: [
          const Text("Ini info box"),
          // FiveStarRatingRive(),
          LayoutBuilder(builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "1287 comments",
                      style: themeData.textTheme.titleMedium!.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
          const Row(
            children: [
              IconTextWidget(
                  icon: Icons.circle_sharp,
                  text: "Normal",
                  iconColor: AppColors.yellowColor),
              IconTextWidget(
                  icon: Icons.circle_sharp,
                  text: "Not Normal",
                  iconColor: AppColors.grey),
              IconTextWidget(
                  icon: Icons.circle_sharp,
                  text: "Less Normal",
                  iconColor: AppColors.nearlyWhite),
            ],
          ),
        ],
      ),
    );
  }
}
