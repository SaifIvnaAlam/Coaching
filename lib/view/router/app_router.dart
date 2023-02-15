import 'package:auto_route/annotations.dart';
import 'package:coaching/view/pages/home_page.dart';
import 'package:coaching/view/pages/mentor_page.dart';

import '../pages/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: SplashPage, initial: true),
    AutoRoute<dynamic>(page: HomePage),
    AutoRoute<dynamic>(page: MentorPage),
  ],
)
class $AppRouter {}
