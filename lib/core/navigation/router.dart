import 'package:ai_buddy/core/navigation/route.dart';
import 'package:ai_buddy/feature/home/ui/page/home_page.dart';
import 'package:ai_buddy/splash_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
