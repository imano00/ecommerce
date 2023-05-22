import 'package:ecommerce/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/services/route_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteService().router,
      routerDelegate: RouteService().router.routerDelegate,
      routeInformationParser: RouteService().router.routeInformationParser,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromRGBO(188, 0, 74, 1.0),
      ),
    );
  }
}
