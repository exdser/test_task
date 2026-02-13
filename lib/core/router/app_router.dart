import 'package:auto_route/auto_route.dart';
import 'package:test_task/features/counter/presentation/counter_page.dart';
import 'package:test_task/features/home/presentation/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: RouteOneRoute.page, path: '/'),
    AutoRoute(page: RouteTwoRoute.page, path: '/counter'),
  ];
}
