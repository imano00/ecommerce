import 'package:core_management_v2/extensions/screen_layout_extension.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final CircleAvatar? image;

  const CustomCard({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = context.themeData;
    final size = MediaQuery.of(context).size;

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
                  fit: BoxFit.cover)),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.all(8),
          height: size.height * 0.15,
          width: size.width * 0.75,
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
              Row(
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
    ]);
  }
}
