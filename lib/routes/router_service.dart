import 'package:ecommerce/routes/route.dart';
import 'package:ecommerce/screens/home/food_page_body.dart';
import 'package:ecommerce/screens/home/main_food_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RouterService {

  final router = GoRouter(
    initialLocation: '/main-food-page',
    routes: <GoRoute>[
      GoRoute(
        path: "/main-food-page",
        builder: (context, state) => MainFoodPage(),
      ),
      GoRoute(
        path: "/food-page-body",
        builder: (context, state) => const FoodPageBody(),
      )
    ],
  );
}
