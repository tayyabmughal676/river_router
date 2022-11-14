import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:river_router/constants/constants.dart';
import 'package:river_router/screens/home_screen.dart';
import 'package:river_router/screens/error_screens/route_not_found.dart';

// GoRouter => GoRouter Instance
final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: "/",
      redirect: (context, state) async {
        bool isUserLoggedIn = false;
        // if (isUserLoggedIn) {
        //   // return null
        //
        // }
        //return "/login";
      },
      routes: [
        GoRoute(
          path: "/",
          name: Constants.root,
          builder: (context, state) => HomeScreen(key: state.pageKey),
        ),
      ],
      errorBuilder: (context, state) => RouteNotFound(
        key: state.pageKey,
        errorMessage: state.error.toString(),
      ),
    );
  },
);
