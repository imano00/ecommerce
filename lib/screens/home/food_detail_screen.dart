import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({super.key});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/pexels-cats-coming-920220.jpg",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      const Text(
                        "4.6",
                        style: TextStyle(
                            color: AppColors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          "Sushi (Food Name)",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconTextWidget(
                        icon: Icons.circle_sharp,
                        text: "huehue",
                        textColor: Colors.amber,
                        iconColor: AppColors.yellowColor,
                        iconSize: 15.0,
                      ),
                      IconTextWidget(
                        icon: Icons.pin_drop,
                        text: "2.00 km",
                        textColor: Colors.amber,
                        iconColor: AppColors.darkGrey,
                        iconSize: 15.0,
                      ),
                      IconTextWidget(
                        icon: Icons.timer_rounded,
                        text: "30 min",
                        textColor: Colors.amber,
                        iconColor: AppColors.darkGrey,
                        iconSize: 15.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Description",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Delicious food that will leave you wanting for more. Feast on this delicious Eastern delight, soft and savory. Your tongue will thank you for the burst of flavours that it brings.",
                      style: GoogleFonts.dmSerifDisplay(fontSize: 15),
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.mainColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "21.00",
                              style: GoogleFonts.dmSerifDisplay(fontSize: 27),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove_circle_outline_rounded,
                                  )),
                              Text(
                                "5",
                                style: GoogleFonts.dmSerifDisplay(fontSize: 27),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.add_circle_outline_rounded))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
