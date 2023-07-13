import 'package:ecommerce/screens/home/main_food_page.dart';
import 'package:ecommerce/routes/router_service.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/services/route_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/consumer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: RouterService.routerConfig(ref),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromRGBO(188, 0, 74, 1.0),
      ),
    );
  }
}
