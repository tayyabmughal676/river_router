import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:river_router/constants/constants.dart';
import 'package:river_router/features/cart/presentation/ui/cart_screen.dart';
import 'package:river_router/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:river_router/features/home/presentation/ui/home_screen.dart';
import 'package:river_router/features/setting/presentation/ui/setting_screen.dart';
import 'package:river_router/screens/home_screen.dart';
import 'package:river_router/screens/error_screens/route_not_found.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: "root");
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: "shell");

// GoRouter => GoRouter Instance
final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: _rootNavigator,
      initialLocation: '/',
      routes: [
        GoRoute(
          path: "/home",
          name: Constants.root,
          builder: (context, state) => HomeScreen(key: state.pageKey),
        ),
        ShellRoute(
            navigatorKey: _shellNavigator,
            builder: (context, state, child) =>
                DashboardScreen(key: state.pageKey, child: child),
            routes: [
              GoRoute(
                path: "/",
                name: Constants.home,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: HomeFeatureScreen(
                    key: state.pageKey,
                  ));
                },
              ),
              GoRoute(
                path: "/cart",
                name: Constants.cart,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: CartScreen(
                    key: state.pageKey,
                  ));
                },
              ),
              GoRoute(
                path: "/setting",
                name: Constants.setting,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: SettingScreen(
                    key: state.pageKey,
                  ));
                },
              ),
            ]),
      ],
      errorBuilder: (context, state) => RouteNotFound(
        key: state.pageKey,
        errorMessage: state.error.toString(),
      ),
    );
  },
);
