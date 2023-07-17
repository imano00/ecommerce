import 'package:card_swiper/card_swiper.dart';
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
  PageController pageController = PageController(viewportFraction: 0.8);
  var currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
        print("Current value is$currentPage");
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = context.themeData;
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.transparent,
      height: size.height * 0.4,
      child: _buildPageItem(),
    );
  }

  Widget _buildPageItem() {
    final ThemeData themeData = context.themeData;
    final size = MediaQuery.of(context).size;

    return Swiper(
      itemCount: 5,
      viewportFraction: 0.85,
      scale: 0.9,
      itemBuilder: (context, position) {
        return Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/pexels-cats-coming-920220.jpg",
                      ),
                      fit: BoxFit.contain)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.15,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.grey,
                ),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 8),
                        child: Text("Ini container bawah",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    // FiveStarRatingRive(),
                    LayoutBuilder(builder: (context, constraints) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.loose,
                              child: Wrap(
                                children: List.generate(
                                  5,
                                  (index) => const Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.loose,
                              child: Text(
                                "4.5",
                                style: themeData.textTheme.titleMedium!
                                    .copyWith(color: AppColors.mainColor),
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.loose,
                              child: Text(
                                "1287 comments",
                                style:
                                    themeData.textTheme.titleMedium!.copyWith(
                                  color: AppColors.mainColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconTextWidget(
                            icon: Icons.circle_sharp,
                            text: "huehue",
                            textColor: Colors.white,
                            iconColor: AppColors.yellowColor),
                        IconTextWidget(
                            icon: Icons.pin_drop,
                            text: "2.00 km",
                            textColor: Colors.white,
                            iconColor: AppColors.nearlyWhite),
                        IconTextWidget(
                            icon: Icons.timer_rounded,
                            text: "30 min",
                            textColor: Colors.white,
                            iconColor: AppColors.nearlyWhite),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]);
      },
    );
  }
}
