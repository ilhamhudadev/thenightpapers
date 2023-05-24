import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:thenightpapers/core/route/static_routes.dart';
import 'package:thenightpapers/module/auth/screen/auth_screen.dart';
import 'package:thenightpapers/module/home/screen/home_screen.dart';

class Routes {
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RouteConstant.home,
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: RouteConstant.auth,
            builder: (BuildContext context, GoRouterState state) {
              return AuthScreen();
            },
          ),
        ],
      ),
    ],
  );
}
