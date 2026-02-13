// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class RouteOneRoute extends PageRouteInfo<void> {
  const RouteOneRoute({List<PageRouteInfo>? children})
    : super(RouteOneRoute.name, initialChildren: children);

  static const String name = 'RouteOneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [CounterScreen]
class RouteTwoRoute extends PageRouteInfo<void> {
  const RouteTwoRoute({List<PageRouteInfo>? children})
    : super(RouteTwoRoute.name, initialChildren: children);

  static const String name = 'RouteTwoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CounterScreen();
    },
  );
}
