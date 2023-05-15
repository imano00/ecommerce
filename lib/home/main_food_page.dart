import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Column(
          children: [
            Text("Country"),
            Text("City"),
          ],
        ),
        title: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: AppColors.iconColor1,
        ),
      ),
    );
  }
}
