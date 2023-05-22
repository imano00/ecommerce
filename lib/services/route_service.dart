import 'dart:js';

import 'package:ecommerce/home/main_food_page.dart';
import 'package:ecommerce/screens/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteService {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: "/",
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: MainFoodPage(),
            );
          }),
    ],
    errorBuilder: (context, builder) =>
        const ErrorScreen(), // errorBuilder: errorWidget,
  );

// static GoRouter get router => _router;
}
