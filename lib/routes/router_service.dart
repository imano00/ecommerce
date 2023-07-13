import 'package:ecommerce/routes/route.dart';
import 'package:ecommerce/screens/home/main_food_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RouterService {
  static GoRouter routerConfig(WidgetRef ref) {
    return GoRouter(
      initialLocation: MainFoodPageRoute().location,
      routes: [
        GoRoute(
          path: '/main-food-page',
        )
      ],
    );
  }
}

final RouterService routerService = RouterService();
