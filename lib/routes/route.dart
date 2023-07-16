import 'dart:async';

// import 'package:auth_management/auth_management.dart';
// import 'package:example/services/auth_service.dart';
import 'package:ecommerce/screens/home/food_page_body.dart';
import 'package:flutter/cupertino.dart';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce/screens/home/main_food_page.dart';

part 'route.g.dart';

@TypedGoRoute<MainFoodPageRoute>(path: '/main-food-page')
class MainFoodPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MainFoodPage();
  }
}

@TypedGoRoute<FoodPageBodyRoute>(path: '/food-page-body')
class FoodPageBodyRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FoodPageBody();
  }
}
