import 'package:coaching/view/router/app_router.dart';
import 'package:coaching/view/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class Coaching extends StatelessWidget {
  Coaching({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
