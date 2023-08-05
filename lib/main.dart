import 'package:ecommerce/routes/router_service.dart';
import 'package:ecommerce/widgets/food_carousel.dart';
import 'package:ecommerce/screens/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromRGBO(188, 0, 74, 1.0),
      ),
    );
  }
}

final router = GoRouter(
  initialLocation: '/main-food-page',
  routes: <GoRoute>[
    GoRoute(
      path: "/main-food-page",
      builder: (context, state) => MainFoodPage(),
    ),
    GoRoute(
      path: "/food-page-body",
      builder: (context, state) => const FoodCarousel(),
    )
  ],
);
